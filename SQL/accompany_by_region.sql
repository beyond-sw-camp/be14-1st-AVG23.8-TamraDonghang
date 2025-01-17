-- 지역별 동행 모집글 조회

SELECT * FROM local_post ;  

SELECT 
    a.acc_post_code AS '게시글 번호',                -- 게시글 코드
    a.acc_post_title AS '제목',               -- 게시글 제목
    a.acc_status AS '모집 상태',                   -- 모집 상태
    a.acc_post_writer_code AS '작성자', 
    a.acc_post_view_count AS '조회수',          -- 조회수
    l.local_code  AS '지역 번호' ,
    l.local_name  AS '지역명'                  -- 지역명
FROM accompany a
JOIN local_post lp ON a.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
ORDER BY l.local_code ASC ;


SELECT 
    a.acc_post_code AS '게시글 번호',                -- 게시글 코드
    a.acc_post_title AS '제목',               -- 게시글 제목
    a.acc_status AS '모집 상태',                   -- 모집 상태
    a.acc_post_writer_code AS '작성자', 
    a.acc_post_view_count AS '조회수',   
    l.local_name  AS '지역명'   
FROM accompany a
JOIN local_post lp ON a.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울'
ORDER BY a.acc_post_upload_time DESC;

