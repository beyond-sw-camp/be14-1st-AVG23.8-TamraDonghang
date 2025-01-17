-- 동행 후기 작성
-- 동행 후기 작성	INSERT	후기는 신청목록과 동행모집 게시글을 조인해서 
-- 작성자와 수락 여부가 Y인 신청자에게만 후기를 작성할 수 있다.

-- <<   동행 평점 등록 트리거 >>
-- 회원이 회원에게 평점을 부여하면 리뷰 대상자의 평점이 자동으로 업데이트된다.
DELIMITER //

CREATE TRIGGER update_user_rating
AFTER INSERT ON review
FOR EACH ROW
BEGIN
    -- 평점이 NULL인 경우 0으로 처리하고, 리뷰가 있는 경우 평균 평점을 계산
    UPDATE user
    SET user_rating_score = IFNULL((
        SELECT AVG(review_rating)
        FROM review
        WHERE review_target_code = NEW.review_target_code
    ), 0)
    WHERE user_code = NEW.review_target_code;
END //

DELIMITER ;

-- << 후기 작성 프로시저>>
DELIMITER //

CREATE PROCEDURE WriteReview(
    IN p_reviewer_id VARCHAR(30),
    IN p_target_id VARCHAR(30),
    IN p_acc_post_code INT,
    IN p_review_rating FLOAT,
    IN p_review_content TEXT
)
BEGIN
    INSERT INTO review (
        review_rating,
        review_content,
        acc_post_code,
        review_target_code,
        reviewer_code
    )
    SELECT 
        p_review_rating,
        p_review_content,
        a.acc_post_code,
        u_target.user_code,
        u_reviewer.user_code
    FROM accompany a
    JOIN user u_reviewer ON u_reviewer.user_id = p_reviewer_id
    JOIN user u_target ON u_target.user_id = p_target_id
    LEFT JOIN apply_list al_reviewer ON a.acc_post_code = al_reviewer.acc_post_code
                                     AND al_reviewer.user_code = u_reviewer.user_code
    LEFT JOIN apply_list al_target ON a.acc_post_code = al_target.acc_post_code
                                   AND al_target.user_code = u_target.user_code
    LEFT JOIN review r ON r.acc_post_code = a.acc_post_code
                      AND r.reviewer_code = u_reviewer.user_code
                      AND r.review_target_code = u_target.user_code
    WHERE a.acc_post_code = p_acc_post_code
      AND a.acc_status = '모집완료'
      AND r.review_code IS NULL
      AND u_reviewer.user_code != u_target.user_code
      AND (
          (a.acc_post_writer_code = u_reviewer.user_code AND al_target.accept_or_not = '수락')
          OR (al_reviewer.accept_or_not = '수락' AND u_target.user_code = a.acc_post_writer_code)
          OR (al_reviewer.accept_or_not = '수락' AND al_target.accept_or_not = '수락')
      );
END //

DELIMITER ;


-- << EXAMPLE >>

-- 리뷰 추가 
CALL WriteReview('user04', 'user12', , 4.5, '정말 좋은 동행이었습니다!');

-- INSERT 불가능
CALL WriteReview('user2', 'usernew', 3, 2.0, '거절되었지만 작성합니다.');

-- INSERT 불가능 
CALL WriteReview('user2', 'user2', 3, 3.0, '자기 자신에게 작성한 후기');

SELECT * FROM review;