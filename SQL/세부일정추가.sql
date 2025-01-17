
-- 여행 일정 등록
-- 세부 일정 테이블에서 지역, 지역별 게시글을 조인하여 세부 일정을 등록할 수 있다.

-- 세부 일정 테이블 조회 
SELECT 
	plan_code AS '세부일정번호'
	, plan_title AS '세부일정제목'
	, plan_content AS '일정내용'
	, plan_start_date AS '일정시작일'
	, plan_end_date AS '일정종료일'
	, local_code AS '지역번호'
	, acc_post_code AS '게시물번호'
FROM plan;


INSERT INTO plan (
    plan_title,
    plan_content,
    plan_start_date,
    plan_end_date,
    local_code,
    acc_post_code
)
VALUES
('천지연 폭포 탐방', '서귀포의 대표 명소인 천지연 폭포를 방문합니다.', '2025-01-21 10:00:00', '2025-01-21 12:00:00', 1, 1),
('올레길 걷기', '서귀포 올레길을 걸으며 힐링하는 시간.', '2025-01-21 14:00:00', '2025-01-21 18:00:00', 1, 1);




-- 존재하지 않는 게시물에 대한 세부 일정은 생성할 수 없음.
INSERT INTO plan (
    plan_title,
    plan_content,
    plan_start_date,
    plan_end_date,
    local_code,
    acc_post_code
)
VALUES
('없는 게시글 일정 추가', '존재하지 않는 게시글에 대한 세부일정입니다.', '2025-01-25 10:00:00', '2025-01-25 12:00:00', 1, 99);

