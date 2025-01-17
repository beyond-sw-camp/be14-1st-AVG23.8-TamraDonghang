- 동행 모집 게시판
CREATE TABLE accompany(
acc_post_code INT AUTO_INCREMENT PRIMARY KEY
, acc_status VARCHAR(10)	NOT NULL	DEFAULT '모집중'
, acc_start_date DATETIME NOT NULL
, acc_end_date DATETIME NOT NULL
, acc_deadline DATETIME NOT NULL
, acc_member_limit	INT NOT NULL DEFAULT 0
, acc_post_upload_time DATETIME NOT NULL
, acc_post_title VARCHAR(255) NOT NULL
, acc_post_content TEXT NOT NULL
, acc_post_view_count INT NOT NULL DEFAULT 0
, acc_age_cond INT
, acc_sex_cond VARCHAR(10) CHECK(acc_sex_cond IN ('F', 'M'))
, acc_is_smoker VARCHAR(10)
, prefer_travel_style VARCHAR(30)
, acc_post_writer_code INT NOT NULL
, FOREIGN KEY (acc_post_writer_code) REFERENCES user(user_code)
);


- 신청 목록
CREATE TABLE apply_list(
acc_post_code INT NOT NULL
, user_code INT NOT NULL
, accept_or_not VARCHAR(10) NOT NULL DEFAULT '대기중'
, CHECK (accept_or_not IN ('수락', '거절', '대기중'))
, PRIMARY KEY (acc_post_code, user_code)
, FOREIGN KEY (acc_post_code) REFERENCES accompany(acc_post_code)
, FOREIGN KEY (user_code) REFERENCES user(user_code)
);


INSERT INTO accompany (acc_status, acc_start_date, acc_end_date, acc_deadline, acc_member_limit, acc_post_upload_time,acc_post_title, acc_post_content, acc_post_writer_code)
VALUES
('모집중', '2025-01-20 10:00:00', '2025-01-25 18:00:00', '2025-01-19 23:59:59', 4, '2025-01-10 23:59:59','서울 여행 모집', '서울 투어를 함께할 분 모집합니다.', 1),
('모집중', '2025-02-01 09:00:00', '2025-02-05 17:00:00', '2025-01-31 23:59:59', 3, '2025-01-11 23:59:59','부산 바다 투어', '부산 바다를 즐기실 분.', 2),
('모집완료', '2025-03-10 08:00:00', '2025-03-15 20:00:00', '2025-03-09 23:59:59', 5,'2025-02-10 23:59:59', '대전 힐링 여행', '대전에서 힐링 여행 함께해요.', 1);

INSERT INTO apply_list (acc_post_code, user_code, accept_or_not)
VALUES
(1, 2, '수락'),
(2, 1, '대기중');

SELECT
al.acc_post_code AS post_code,           -- 동행 게시글 코드
a.acc_post_title AS post_title,          -- 동행 게시글 제목
al.user_code AS applicant_code,          -- 신청자 회원 번호
u.user_name AS applicant_name,           -- 신청자 이름
al.accept_or_not AS accept_status        -- 수락 여부
FROM apply_list al
JOIN accompany a ON al.acc_post_code = a.acc_post_code -- 동행 게시글과 신청 목록 조인
JOIN user u ON al.user_code = u.user_code             -- 회원 정보와 신청 목록 조인
ORDER BY al.acc_post_code, al.accept_or_not;  



