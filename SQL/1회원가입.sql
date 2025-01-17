CREATE TABLE user (
user_code INT AUTO_INCREMENT PRIMARY KEY
, user_id	VARCHAR(30)	NOT NULL UNIQUE
, user_gender VARCHAR(10) NOT NULL CHECK(user_gender IN ('남', '여'))
, user_password VARCHAR(30) NOT NULL
, user_name VARCHAR(30) NOT NULL
, user_birth DATE NOT NULL
, user_phonenum VARCHAR(30) NOT NULL
, user_rating_score FLOAT NOT NULL DEFAULT 0
, user_smoke VARCHAR(10) CHECK(user_smoke IN ('Y', 'N'))
, user_local VARCHAR(30)
, user_type VARCHAR(10) NOT NULL CHECK(user_type IN ('회원', '관리자'))
, user_repot_count INT NOT NULL DEFAULT 0
, user_act_status VARCHAR(10) NOT NULL DEFAULT 'Y'
, blacklist VARCHAR(10) NOT NULL DEFAULT 'N'
, CHECK(user_act_status IN ('Y', 'N'))
, CHECK(blacklist IN ('Y', 'N'))
);


-- 회원 가입
INSERT INTO user (
user_id,
user_gender,
user_password,
user_name,
user_birth,
user_phonenum,
user_rating_score,
user_smoke,
user_local,
user_type,
user_report_count,
user_act_status,
blacklist
) VALUES
('user123', 'M', 'password123', '김철수', '1990-05-12', '010-1234-5678', 4.5, 'Y', '서울', '회원', 0, 'Y', 'N'),
('user456', 'F', 'password456', '이영희', '1992-03-22', '010-8765-4321', 3.9, 'N', '부산', '회원', 1, 'Y', 'N'),
('admin01', 'M', 'adminpass', '관리자1', '1985-07-20', '010-5555-6666', 0, 'Y', '서울', '관리자', 0, 'Y', 'N'),
('user789', 'F', 'password789', '박지민', '1995-11-05', '010-2345-6789', 2.3, 'Y', '대구', '회원', 2, 'Y', 'N'),
('user321', 'M', 'password321', '이성민', '1988-01-10', '010-9876-5432', 4.0, 'N', '인천', '회원', 0, 'Y', 'N');




