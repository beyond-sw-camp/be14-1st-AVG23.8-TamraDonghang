-- 1. 커뮤니티 게시글 작성
INSERT INTO community (com_post_upload_time, com_title, com_content, com_post_writer_code)
SELECT NOW(), '새로운 게시글 제목', '새로운 게시글 내용입니다.', u.user_code
FROM user u
WHERE u.user_id = 'john_doe';

-- 커뮤니티 게시글 테이블 데이터 확인
SELECT * FROM community ORDER BY com_post_code;