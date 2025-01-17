-- 동행 참여자 조회
-- 특정 동행에 참여하는 회원(작성자, 수락된 신청자) 목록을 조회할 수 있다. 

-- 동행 게시글 2번에 대한 참여자(작성자, 수락된 신청자) 목록 조회 
SELECT *
FROM (
    -- 작성자 조회
    SELECT 
        sub.acc_post_code AS '모집 게시글 번호',                    
        sub.acc_post_title AS '제목',               
        sub.user_code AS '참가자 번호',      
        sub.user_name AS '참가자 이름',      
        sub.user_id AS '참가자 ID',          
        '작성자' AS role                      
    FROM (
        SELECT 
            a.acc_post_code,  
            a.acc_post_title, 
            u.user_code,      
            u.user_name,      
            u.user_id         
        FROM accompany a
        JOIN user u ON a.acc_post_writer_code = u.user_code
    ) AS sub

    UNION

    -- 수락된 참여자 조회
    SELECT 
        a.acc_post_code AS '모집 게시글 번호',
        a.acc_post_title AS '제목',
        u.user_code AS '회원번호',
        u.user_name AS '회원이름',
        u.user_id AS '회원아이디',
        '참여자' AS role
    FROM accompany a
    JOIN apply_list al ON a.acc_post_code = al.acc_post_code
    JOIN user u ON al.user_code = u.user_code
    WHERE al.accept_or_not = '수락'
) AS combined_result
WHERE combined_result.`모집 게시글 번호` = 2
ORDER BY combined_result.`모집 게시글 번호`, role;
