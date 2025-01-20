-- 커뮤니티 게시글 사진 삽입
-- 커뮤니티 게시글 테이블과 커뮤니티 게시글 사진 테이블을 조인하여 커뮤니티 게시글 작성 시 사진을 추가할 수 있다.
SELECT 
    c.com_post_code, c.com_title, c.com_content, 
    p.com_pic_path, p.com_pic_name, p.com_is_thumbnail
FROM 
    community c
LEFT JOIN 
    com_pic p
ON 
    c.com_post_code = p.com_post_code
WHERE 
    c.com_post_code = 1; -- 특정 게시글 코드