-- 동행 모집글 내용 조회
-- 동행 모집 게시글에서 동행 시작 시각, 동행 종료 시각, 모집 상태, 모집 인원, 상세 내용으로 조회할 수 있다.
-- 모집중인 것만 검색
SELECT 
    acc_start_date AS 여행_시작_시간, 
    acc_end_date AS 여행_종료_시간, 
    acc_status AS 모집_상태, 
    acc_member_limit AS 모집_인원_수, 
    acc_post_title AS 게시글_제목, 
    acc_post_content AS 상세_정보
FROM 
    accompany
WHERE 
    acc_status = '모집중';

-- 모집 인원 5명 이하인 것만 검색
SELECT 
    acc_start_date AS 여행_시작_시간, 
    acc_end_date AS 여행_종료_시간, 
    acc_status AS 모집_상태, 
    acc_member_limit AS 모집_인원_수, 
    acc_post_title AS 게시글_제목, 
    acc_post_content AS 상세_정보
FROM 
    accompany
WHERE 
    acc_member_limit >= 5;