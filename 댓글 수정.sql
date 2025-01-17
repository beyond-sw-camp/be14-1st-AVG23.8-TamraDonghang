-- 댓글 수정
-- 댓글 작성자일 경우 동행 모집 댓글 테이블에 댓글의 내용을 수정할 수 있다.
UPDATE acc_post_comment
SET acc_comment_content = '여행 계획을 다시 짜고 싶어요!', 
    acc_comment_update_time = CURRENT_TIME
WHERE acc_comment_code = 2
  AND acc_comment_writer_code = 1;
  
SELECT * 
FROM acc_post_comment
WHERE acc_comment_code = 2;