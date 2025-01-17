-- 동행 모집 상태 변경
-- 동행 모집 게시글 작성자는 모집 상태(모집 중, 모집 완료)를 변경할 수 있다.
SELECT * FROM accompany;

UPDATE accompany
SET acc_status = '모집완료'
WHERE acc_post_code = 1 AND acc_post_writer_code = 1;

SELECT 
	a.acc_post_code AS '모집글 번호'
	, a.acc_status AS '모집 상태'
	, a.acc_post_writer_code AS '작성자'
FROM accompany a; 
