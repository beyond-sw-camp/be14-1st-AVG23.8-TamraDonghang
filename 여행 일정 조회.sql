-- 여행 일정 조회
-- 세부일정 테이블에서 지역, 지역별 게시글을 조인하여 세부 일정을 조회할 수 있다.
-- 1. 특정 지역 상세 일정 조회
SELECT p.plan_code, p.plan_title, p.plan_content, p.plan_start_date, p.plan_end_date, l.local_name
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울';  -- 원하는 지역을 기준으로 조회
-- 2. 특정 지역과, 특정 상세 일정 조회
SELECT p.plan_code, p.plan_title, p.plan_content, p.plan_start_date, p.plan_end_date, l.local_name
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울' 
  AND p.plan_code = 1;  -- 조회하려는 상세 일정의 plan_code
-- 3. 다양한 지역에 대한 상세 일정 조회
SELECT p.plan_code, p.plan_title, p.plan_content, p.plan_start_date, p.plan_end_date, l.local_name
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name IN ('서울', '부산', '대전');  -- 여러 지역을 기준으로 조회
