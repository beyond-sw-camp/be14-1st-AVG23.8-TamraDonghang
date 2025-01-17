-- 규제처리 상태 정기 업데이트
-- 날짜 지나면 정지 해제 프로시저
delimiter //

CREATE OR REPLACE PROCEDURE updateUserStatus(
)
BEGIN
UPDATE user
JOIN (
    SELECT reg_user_code, MAX(reg_end_date) AS latest_end_date
    FROM regulation
    GROUP BY reg_user_code
) AS latest_regulation ON user.user_code = latest_regulation.reg_user_code
SET user.user_act_status = 'Y'
WHERE TIMESTAMPDIFF(SECOND, NOW(), latest_regulation.latest_end_date) < 0;
END //
delimiter ;

CALL updateUserStatus();