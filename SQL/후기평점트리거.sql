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
