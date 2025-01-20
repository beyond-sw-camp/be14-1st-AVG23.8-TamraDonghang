-- 7. 댓글 수정
-- 커뮤니티 댓글 테이블 데이터 확인
SELECT * FROM com_comment ORDER BY com_coment_code;

UPDATE com_comment
SET com_coment_content = '수정된 댓글 내용입니다.'
WHERE com_coment_code = 1 AND com_comment_writer_code = 1;

-- 커뮤니티 댓글 테이블 데이터 확인
SELECT * FROM com_comment ORDER BY com_coment_code;