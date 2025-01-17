-- 댓글 작성
-- 동행 모집 게시글 테이블에 댓글을 작성할 수 있다. 
INSERT INTO acc_post_comment (acc_comment_content, acc_post_code, acc_comment_writer_code)
VALUES ('이 여행 너무 좋을 것 같아요!', 1, 2),
       ('다음에는 꼭 함께 가고 싶어요!', 2, 1),
       ('대전에서 힐링 여행 정말 좋았어요!', 3, 2);
      
SELECT * FROM acc_post_comment;