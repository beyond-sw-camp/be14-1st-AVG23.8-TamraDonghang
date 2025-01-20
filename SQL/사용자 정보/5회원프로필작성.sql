
- 여행 스타일
CREATE TABLE tripstyle (
trip_style_code INT AUTO_INCREMENT PRIMARY KEY
, trip_style_name VARCHAR(30) NOT NULL
);

- 회원별 여행 선호 스타일
CREATE TABLE personal_trip_style (
user_code INT NOT NULL
, trip_style_code INT
, PRIMARY KEY (user_code, trip_style_code)
);

- 회원 프로필 사진
CREATE TABLE profile_pic (
pro_pic_code INT AUTO_INCREMENT PRIMARY KEY
, pro_pic_path VARCHAR(255) NOT NULL
, pro_pic_name VARCHAR(255) NOT NULL
, pro_pic_rename VARCHAR(255) NOT NULL
, user_code INT NOT NULL
, FOREIGN KEY (user_code) REFERENCES user(user_code)
);


- 회원별 여행 선호 스타일 데이터 삽입
INSERT INTO tripstyle (trip_style_code, trip_style_name)
VALUES
(1,'j형'),(2,'P형'),(3,'액티비티'),(4,'정적인'),(5,'아기자기한');


- 회원별 여행 선호 스타일 데이터 삽입
INSERT INTO personal_trip_style (user_code, trip_style_code)
VALUES
(1, 1), (1, 3), (2, 2), (3, 4), (4, 5);






