
-- << 후기 작성 프로시저>>
-- 후기 작성자는 해당 동행 모집글의 작성자 또는 수락된 신청자여야 한다.
-- 모집 상태는 **모집 완료**여야 한다.
-- 신청자일 경우 신청 상태가 **수락**이어야 한다.
-- 작성자는 수락된 신청자에게만 후기 작성 가능하다.
-- 신청자는 작성자 또는 다른 수락된 신청자에게 후기 작성 가능하다.
-- 이미 작성한 후기(게시글 - 리뷰대상자 - 리뷰작성자 가 같을 경우)는 중복 작성 불가하다. => 제약조건으로 추가
-- 자기 자신에게는 후기 작성 불가하다.


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
CALL WriteReview('admin03', 'user02', 3, 4.5, '정말 좋은 동행이었습니다!');

-- INSERT 불가능
CALL WriteReview('user2', 'usernew', 3, 2.0, '거절되었지만 작성합니다.');

-- INSERT 불가능 
CALL WriteReview('user2', 'user2', 3, 3.0, '자기 자신에게 작성한 후기');

SELECT * FROM review;