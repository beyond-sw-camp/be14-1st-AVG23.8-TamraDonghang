-- 9. 대댓글 작성
INSERT INTO com_comment (com_comment_upload_time, com_coment_content, com_post_code, com_comment_writer_code, com_parent_comment_code, com_coment_id)
VALUES (NOW(), '첫 번째 댓글에 대한 대댓글입니다.', 1, 1, 1, 'john_doe');

-- 커뮤니티 댓글 테이블 데이터 확인
SELECT * FROM com_comment ORDER BY com_coment_code;