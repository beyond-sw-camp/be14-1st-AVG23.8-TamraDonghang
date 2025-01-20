-- -. 회원 'user123'의 프로필 사진, 선호 여행 스타일, 거주지, 흡연 여부 수정
UPDATE user
SET user_profile_pic = 'images/user123_profile.jpg', -- 프로필 사진 경로
user_travel_preference = '자연 여행',
user_residence = '서울 강남구',
user_smoking_preference = 'N'
WHERE user_id = 'user123';

