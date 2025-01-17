CREATE TABLE review (
review_code INT AUTO_INCREMENT PRIMARY KEY
, review_rating float NOT NULL
, review_content TEXT NOT NULL
, acc_post_code INT NOT NULL
, review_target_id VARCHAR(30) NOT NULL
, reviewer_id VARCHAR(30) NOT NULL
, CHECK (review_rating BETWEEN 0 AND 5)
);


INSERT INTO review (review_rating, review_content, acc_post_code, review_target_id, reviewer_id)
VALUES
(4.8, '너무 즐거운 여행이었습니다!', 1, 2, 1),
(3.5, '무난한 여행이었어요.', 2, 1, 2);

SELECT
r.review_code,               -- 후기 코드
r.review_rating,             -- 후기 평점
r.review_content,            -- 후기 내용
r.acc_post_code,             -- 동행 게시글 코드
u.user_code AS target_code,  -- 후기 대상자의 회원 코드
u.user_name AS target_name,  -- 후기 대상자의 이름
r.reviewer_id AS reviewer_id -- 작성자의 회원 ID
FROM review r
JOIN user u ON u.user_code = r.review_target_id -- 후기 대상자와 회원 테이블 조인
ORDER BY r.review_code; -- 후기 코드 순으로 정렬