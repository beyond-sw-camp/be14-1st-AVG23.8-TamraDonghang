-- 경고 부여 및 블랙리스트 추가
-- 규제히스토리 등록시 경고 횟수에 따라 종료 시간을 프로시저를 통해 계산
-- 유저 활성화 여부를 'N'으로 등록, 규제 횟수 +1
-- 신고 문의 내역의 상태를 '처리완료'로 변환
-- 경고 횟수가 3번째 이상이면 블랙리스트 등록
-- 규제 종료 시간 자동 계산 (1회 3일, 2회 7일, 3회 영구정지 및 블랙리스트 등록)
DELIMITER //

CREATE OR REPLACE PROCEDURE set_reg_end_date(IN user_code INT, OUT reg_end DATETIME)
BEGIN
    DECLARE report_count INT;

    -- user_report_count 값을 가져옵니다. (LIMIT 1로 중복 제거)
    SELECT user_report_count INTO report_count
    FROM user
    WHERE user.user_code = user_code
    LIMIT 1;

    -- report_count에 따라 reg_end_date 설정
    CASE 
        WHEN report_count = 1 THEN
            SET reg_end = DATE_ADD(NOW(), INTERVAL 3 DAY);
        WHEN report_count = 2 THEN
            SET reg_end = DATE_ADD(NOW(), INTERVAL 7 DAY);
        WHEN report_count >= 3 THEN
            SET reg_end = NULL;
    END CASE;
        IF report_count >= 3 THEN
        UPDATE user
        SET blacklist = 'Y'
        WHERE user.user_code = user_code;
    END IF;
END //

DELIMITER ;

-- 계정 활성 여부 및 신고 횟수 업데이트 트리거
DELIMITER //

CREATE OR REPLACE TRIGGER user_act
    BEFORE INSERT
    ON regulation
    FOR EACH ROW
BEGIN
    DECLARE new_reg_end DATETIME;

    -- user 테이블에서 사용자 활성 상태 및 신고 횟수 업데이트
    UPDATE user
    SET user_act_status = 'N', user_report_count = user_report_count + 1
    WHERE user_code = NEW.reg_user_code;

    -- 프로시저 호출하여 reg_end_date 계산
    CALL set_reg_end_date(NEW.reg_user_code, new_reg_end);

    -- 규제 종료 시간 업데이트
    SET NEW.reg_end_date = new_reg_end;
END //

DELIMITER ;

-- 규제 등록시 report에 등록된 상태 '처리중', '처리 완료', '반려' -> '처리 완료'로 전환
DELIMITER //

CREATE OR REPLACE TRIGGER set_report_status
    AFTER INSERT
    ON regulation
    FOR EACH ROW
BEGIN
    -- user 테이블에서 사용자 활성 상태 및 신고 횟수 업데이트
    UPDATE report
    SET report_status = '처리 완료'
    WHERE report_code = NEW.report_code;
END //

DELIMITER ;

SELECT * FROM report;
SELECT * FROM regulation;
SELECT * FROM USER;
INSERT INTO regulation (reg_start_date, reg_user_code, report_code)
VALUES (NOW(), 2, 1);