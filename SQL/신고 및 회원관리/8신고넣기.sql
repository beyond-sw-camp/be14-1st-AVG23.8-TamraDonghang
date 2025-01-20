-- - 신고 사유 목록
CREATE TABLE report_reason(
report_reason_code INT AUTO_INCREMENT PRIMARY KEY
, report_reason_name VARCHAR(30) NOT NULL
);


- 신고 히스토리
CREATE TABLE report(
report_code INT AUTO_INCREMENT PRIMARY KEY
, report_date DATETIME NOT NULL DEFAULT(CURRENT_TIME)
, report_status	VARCHAR(30)	NOT NULL	DEFAULT '처리중'
, reporter_user_code INT	NOT NULL
, reported_user_code INT	NOT NULL
, report_reason_code INT	NOT NULL
, CHECK (report_status IN ('처리중', '처리완료'))
, FOREIGN KEY (reporter_user_code) REFERENCES user(user_code)
, FOREIGN KEY (reported_user_code) REFERENCES user(user_code)
, FOREIGN KEY (report_reason_code) REFERENCES report_reason(report_reason_code)
);



INSERT INTO report_reason (report_reason_code, report_reason_name)
VALUES
(1,'부적절한 언어 사용'),
(2,'스팸 게시물');



INSERT INTO report (report_date, report_status, reporter_user_code, reported_user_code, report_reason_code)
VALUES
(NOW(), '처리중', 1, 2, 1),
(NOW(), '처리완료', 2, 1, 2);





