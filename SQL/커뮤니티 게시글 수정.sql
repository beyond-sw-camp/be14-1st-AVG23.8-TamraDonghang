-- 2. 게시글 수정
-- 커뮤니티 게시글 테이블 데이터 확인
SELECT * FROM community ORDER BY com_post_code;

UPDATE community c
JOIN user u ON c.com_post_writer_code = u.user_code
SET c.com_title = '수정된 게시글 제목', c.com_content = '수정된 게시글 내용입니다.'
WHERE c.com_post_code = 1;

-- 커뮤니티 게시글 테이블 데이터 확인
SELECT * FROM community c ORDER BY com_post_code = 1;