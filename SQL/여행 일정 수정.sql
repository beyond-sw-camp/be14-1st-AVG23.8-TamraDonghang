-- 여행 일정 수정
-- 세부 일정 테이블에서 지역, 지역별 게시글을 조인하여 세부 일정을 수정할 수 있다.
SELECT p.plan_code, p.plan_title, p.plan_content, p.plan_start_date, p.plan_end_date, l.local_name
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울';  -- 원하는 지역을 기준으로 조회

UPDATE plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
SET p.plan_title = '새로운 일정 제목', 
    p.plan_content = '새로운 일정 내용', 
    p.plan_start_date = '2025-02-01 10:00:00', 
    p.plan_end_date = '2025-02-01 18:00:00'
WHERE l.local_name = '서울' 
  AND p.plan_code = 1;  -- 수정하려는 상세 일정의 plan_code를 기준으로 수정
  
SELECT * FROM plan;
