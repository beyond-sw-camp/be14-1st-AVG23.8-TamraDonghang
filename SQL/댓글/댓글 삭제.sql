-- 댓글 삭제
-- 댓글 작성자일 경우 동행 모집 댓글 테이블에 댓글의 내용을 '삭제된 댓글입니다'로 변경할 수 있다.
UPDATE acc_post_comment
SET acc_comment_content = '삭제된 댓글입니다.'
WHERE acc_comment_code = 1
  AND acc_comment_writer_code = 2;

SELECT * 
FROM acc_post_comment
WHERE acc_comment_code = 1;