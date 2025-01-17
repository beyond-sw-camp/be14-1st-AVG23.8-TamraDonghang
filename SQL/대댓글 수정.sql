-- 대댓글 수정
-- 대댓글의 내용을 수정할 수 있다.
UPDATE acc_post_comment
SET acc_comment_content = '수정된 대댓글 내용',
	 acc_comment_update_time = CURRENT_TIMESTAMP
WHERE acc_comment_code = 7 -- 수정하려는 대댓글 ID