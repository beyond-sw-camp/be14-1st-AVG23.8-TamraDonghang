- 2. 특정 회원(user_id가 'user456')의 평점과 흡연 여부를 수정
UPDATE user
SET user_rating_score = 4.5,
user_smoke = 'Y'
WHERE user_id = 'user456';

