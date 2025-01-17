-- 동행 모집글 조건 조회
-- 동행 모집 게시글에서 연령대 조건, 성별 조건, 흡연 여부 조건, 선호 여행 스타일 조건에 따라 내용을 조회할 수 있다.
SELECT * 
FROM accompany
WHERE acc_age_cond = 2
  AND acc_sex_cond = 'F'
  AND acc_is_smoker = 'N'
  AND prefer_travel_style = 3
ORDER BY acc_post_upload_time DESC;