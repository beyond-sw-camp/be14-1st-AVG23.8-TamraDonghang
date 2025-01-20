-- SOFT DELETE(업데이트)
UPDATE user
SET user_rating_score = 4.5,
user_smoke = 'Y'
WHERE user_id = 'user456';

