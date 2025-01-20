-- 추천수 업데이트
UPDATE community
SET com_reccomend_count = com_reccomend_count + 1
WHERE com_post_code = 1;

SELECT * FROM community;