-- 여행 일정 삭제
-- 세부 일정 테이블에서 지역, 지역별 게시글을 조인하여 세부 일정을 삭제할 수 있다.
DELETE p
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울';  -- 삭제하려는 지역을 기준으로

DELETE p
FROM plan p
JOIN local_post lp ON p.acc_post_code = lp.acc_post_code
JOIN local_list l ON lp.local_code = l.local_code
WHERE l.local_name = '서울' 
  AND p.plan_code = 1;  -- 삭제하려는 상세 일정의 plan_code
  
SELECT * FROM plan;
