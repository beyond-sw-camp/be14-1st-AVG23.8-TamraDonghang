-- 대댓글 삭제
-- 대댓글의 내용을 '삭제된 댓글입니다'로 변경할 수 있다.
UPDATE acc_post_comment
SET acc_comment_content = '삭제된 댓글 입니다.'
WHERE acc_parent_comment_code = 1;
