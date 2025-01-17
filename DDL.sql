-- drop
DROP TABLE if EXISTS notice;
DROP TABLE if EXISTS board;
DROP TABLE if EXISTS regulation;
DROP TABLE if EXISTS report;
DROP TABLE if EXISTS report_reason;
DROP TABLE if EXISTS personal_trip_style;
DROP TABLE if EXISTS profile_pic;
DROP TABLE if EXISTS com_pic;
DROP TABLE if EXISTS com_comment;
DROP TABLE if EXISTS community;
DROP TABLE if EXISTS acc_pic;
DROP TABLE if EXISTS acc_post_comment;
DROP TABLE if EXISTS review;
DROP TABLE if EXISTS apply_list;
DROP TABLE if EXISTS plan;
DROP TABLE if EXISTS local_post;
DROP TABLE if EXISTS accompany;
DROP TABLE if EXISTS local_list;
DROP TABLE if EXISTS tripstyle;
DROP TABLE if EXISTS user;

-- 회원 카테고리 DDL

-- 회원 정보 테이블
CREATE TABLE if NOT EXISTS user (
	 user_code INT AUTO_INCREMENT PRIMARY KEY
  , user_id	VARCHAR(30)	NOT NULL UNIQUE
  , user_gender VARCHAR(10) NOT NULL CHECK(user_gender IN ('F', 'M'))
  , user_password VARCHAR(30) NOT NULL
  , user_name VARCHAR(30) NOT NULL
  , user_birth DATE NOT NULL
  , user_phonenum VARCHAR(30) NOT NULL UNIQUE
  , user_rating_score FLOAT NOT NULL DEFAULT 0
  , user_smoke VARCHAR(10) CHECK(user_smoke IN ('Y', 'N'))
  , user_local VARCHAR(30)
  , user_type VARCHAR(10) NOT NULL DEFAULT '회원'
  , user_report_count INT NOT NULL DEFAULT 0
  , user_act_status VARCHAR(10) NOT NULL DEFAULT 'Y'
  , blacklist VARCHAR(10) NOT NULL DEFAULT 'N'
  , CHECK(user_act_status IN ('Y', 'N'))
  , CHECK(blacklist IN ('Y', 'N'))
  , CHECK(user_type IN ('회원', '관리자'))
);

-- 여행 스타일
CREATE TABLE if NOT EXISTS tripstyle (
	 trip_style_code INT AUTO_INCREMENT PRIMARY KEY
  , trip_style_name VARCHAR(30) NOT NULL UNIQUE
);

-- 지역
CREATE TABLE if NOT EXISTS local_list (
	 local_code INT AUTO_INCREMENT PRIMARY KEY
  , local_name VARCHAR(30)	NOT NULL UNIQUE
);

-- 동행 모집 게시판
CREATE TABLE if NOT EXISTS accompany(
	 acc_post_code INT AUTO_INCREMENT PRIMARY KEY
  , acc_status VARCHAR(10)	NOT NULL	DEFAULT '모집중'
  , acc_start_date DATETIME NOT NULL
  , acc_end_date DATETIME NOT NULL
  , acc_deadline DATETIME NOT NULL
  , acc_member_limit	INT NOT NULL DEFAULT 0
  , acc_post_upload_time DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , acc_post_update_time DATETIME
  , acc_post_title VARCHAR(255) NOT NULL
  , acc_post_content TEXT NOT NULL
  , acc_post_view_count INT NOT NULL DEFAULT 0
  , acc_age_cond INT CHECK(acc_age_cond BETWEEN 0 AND 4)
  , acc_sex_cond VARCHAR(10) CHECK(acc_sex_cond IN ('F', 'M'))
  , acc_is_smoker VARCHAR(10) CHECK(acc_is_smoker IN ('Y', 'N'))
  , prefer_travel_style INT
  , acc_post_writer_code INT NOT NULL
  , CHECK(acc_status IN ('모집중', '모집완료'))
  , FOREIGN KEY (acc_post_writer_code) REFERENCES user(user_code)
  , FOREIGN KEY (prefer_travel_style) REFERENCES tripstyle(trip_style_code) ON DELETE SET NULL
);

-- 지역별 게시글
CREATE TABLE if NOT EXISTS local_post (
	 local_code INT NOT NULL
  , acc_post_code INT NOT NULL
  , PRIMARY KEY (local_code, acc_post_code)
  , FOREIGN KEY (local_code) REFERENCES local_list(local_code)
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
);

-- 세부 일정
CREATE TABLE if NOT EXISTS plan (
	 plan_code INT AUTO_INCREMENT PRIMARY KEY
  , plan_title VARCHAR(255) NOT NULL
  , plan_content TEXT NOT NULL
  , plan_start_date DATETIME NOT NULL
  , plan_end_date DATETIME	NOT NULL
  , local_code INT NOT NULL
  , acc_post_code INT NOT NULL
  , FOREIGN KEY (local_code) REFERENCES local_list(local_code)
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
);

-- 신청 목록
CREATE TABLE if NOT EXISTS apply_list(
	 acc_post_code INT NOT NULL
  , user_code INT NOT NULL
  , accept_or_not VARCHAR(10) NOT NULL DEFAULT '대기중'
  , CHECK (accept_or_not IN ('수락', '거절', '대기중'))
  , PRIMARY KEY (acc_post_code, user_code)
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
  , FOREIGN KEY (user_code) REFERENCES user(user_code)
);

-- 후기
-- 후기 대상자는 쿼리문에서 추출해야할듯? 제약조건을 테이블을 걸기 힘들다
CREATE TABLE if NOT EXISTS review (
	 review_code INT AUTO_INCREMENT PRIMARY KEY
  , review_rating float NOT NULL
  , review_content TEXT NOT NULL
  , acc_post_code INT NOT NULL
  , review_target_code INT NOT NULL
  , reviewer_code INT NOT NULL
  , CHECK (review_rating BETWEEN 0 AND 5)
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
  , FOREIGN KEY (reviewer_code) REFERENCES user(user_code)
  , UNIQUE (acc_post_code, reviewer_code, review_target_code)
);

-- 동행 모집 댓글
CREATE TABLE if NOT EXISTS acc_post_comment(
	 acc_comment_code INT AUTO_INCREMENT PRIMARY KEY
  , acc_comment_upload_time DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , acc_comment_update_time DATETIME
  , acc_comment_content TEXT NOT NULL
  , acc_post_code INT NOT NULL
  , acc_comment_writer_code INT NOT NULL
  , acc_parent_comment_code INT NULL
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
  , FOREIGN KEY (acc_comment_writer_code) REFERENCES user(user_code)
  , FOREIGN KEY (acc_parent_comment_code) REFERENCES acc_post_comment(acc_comment_code)
);

-- 동행 게시글 사진
CREATE TABLE if NOT EXISTS acc_pic (
	 acc_pic_code INT AUTO_INCREMENT PRIMARY KEY
  , acc_pic_path VARCHAR(255)	NOT NULL
  , acc_pic_name VARCHAR(255) NOT NULL
  , acc_pic_rename VARCHAR(255) NOT NULL
  , acc_post_code INT NOT NULL
  , acc_is_thumbnail VARCHAR(10) NOT NULL DEFAULT 'N'
  , CHECK(acc_is_thumbnail IN ('Y', 'N'))
  , FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
);

-- 커뮤니티 게시글 테이블
CREATE TABLE if NOT EXISTS community(
	 com_post_code INT AUTO_INCREMENT PRIMARY KEY
  , com_post_upload_time DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , com_post_update_time DATETIME
  , com_title VARCHAR(255)	NOT NULL
  , com_content TEXT NOT NULL
  , com_reccomend_count INT NOT NULL DEFAULT 0
  , com_post_view_count INT NOT NULL DEFAULT 0
  , com_post_writer_code INT NOT NULL
  , FOREIGN KEY (com_post_writer_code) REFERENCES user(user_code)
);

-- 커뮤니티 게시글 댓글
CREATE TABLE if NOT EXISTS com_comment(
	 com_comment_code INT AUTO_INCREMENT PRIMARY KEY
  , com_comment_upload_time DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , com_comment_update_time DATETIME
  , com_comment_content TEXT NOT NULL
  , com_post_code INT NOT NULL
  , com_comment_writer_code INT NOT NULL
  , com_parent_comment_code INT
  , FOREIGN KEY (com_post_code) REFERENCES community(com_post_code)
  , FOREIGN KEY (com_comment_writer_code) REFERENCES user(user_code)
  , FOREIGN KEY (com_parent_comment_code) REFERENCES com_comment(com_comment_code)
);

-- 커뮤니티 게시글 사진
CREATE TABLE if NOT EXISTS com_pic  (
	 com_pic_code INT AUTO_INCREMENT PRIMARY KEY
  , com_pic_path VARCHAR(255)	NOT NULL
  , com_pic_name VARCHAR(255) NOT NULL
  , com_pic_rename VARCHAR(255) NOT NULL
  , com_post_code INT NOT NULL
  , com_is_thumbnail VARCHAR(10) NOT NULL DEFAULT 'N'
  , CHECK(com_is_thumbnail IN ('Y', 'N'))
  , FOREIGN KEY (com_post_code) REFERENCES community(com_post_code)
);

-- 회원 프로필 사진
CREATE TABLE if NOT EXISTS profile_pic (
	 pro_pic_code INT AUTO_INCREMENT PRIMARY KEY
  , pro_pic_path VARCHAR(255) NOT NULL
  , pro_pic_name VARCHAR(255) NOT NULL
  , pro_pic_rename VARCHAR(255) NOT NULL
  , user_code INT NOT NULL UNIQUE
  , FOREIGN KEY (user_code) REFERENCES user(user_code)
);

-- 회원별 여행 선호 스타일
CREATE TABLE if NOT EXISTS personal_trip_style (
	 user_code INT
  , trip_style_code INT
  , PRIMARY KEY (user_code, trip_style_code)
);

-- 신고 사유 목록
CREATE TABLE if NOT EXISTS report_reason(
	 report_reason_code INT AUTO_INCREMENT PRIMARY KEY
  , report_reason_name VARCHAR(30) NOT NULL UNIQUE
);

-- 신고 히스토리
CREATE TABLE if NOT EXISTS report(
    report_code INT AUTO_INCREMENT PRIMARY KEY
  , report_date DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , report_status	VARCHAR(30)	NOT NULL	DEFAULT '처리중'
  , reporter_user_code INT	NOT NULL
  , reported_user_code INT	NOT NULL
  , report_reason_code INT	NOT NULL
  , CHECK (report_status IN ('처리중', '처리 완료', '반려'))
  , FOREIGN KEY (reporter_user_code) REFERENCES user(user_code)
  , FOREIGN KEY (reported_user_code) REFERENCES user(user_code)
  , FOREIGN KEY (report_reason_code) REFERENCES report_reason(report_reason_code)
);

-- 규제 히스토리
CREATE TABLE if NOT EXISTS regulation(
	 regulation_code INT AUTO_INCREMENT PRIMARY KEY
  , reg_start_date DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , reg_end_date DATETIME
  , reg_user_code INT NOT NULL
  , report_code INT NOT NULL
  , FOREIGN KEY (reg_user_code) REFERENCES user(user_code)
  , FOREIGN KEY (report_code) REFERENCES report(report_code)
);

-- 게시판 종류
CREATE TABLE if NOT EXISTS board(
	 board_code INT AUTO_INCREMENT PRIMARY KEY
  , board_name VARCHAR(10) NOT NULL UNIQUE
);

-- 공지사항
CREATE TABLE if NOT EXISTS notice(
	 notice_code INT AUTO_INCREMENT PRIMARY KEY
  , notice_title VARCHAR(255) NOT NULL
  , notice_content TEXT NOT NULL
  , notice_post_upload_time DATETIME NOT NULL DEFAULT(CURRENT_TIME)
  , notice_post_update_time DATETIME
  , notice_post_view_count INT NOT NULL DEFAULT 0
  , notice_post_writer_code INT NOT NULL
  , board_code INT NOT NULL
  , FOREIGN KEY (board_code) REFERENCES board(board_code)
  , FOREIGN KEY (notice_post_writer_code) REFERENCES user(user_code)
);