-- 신고 문의 상태 변경
SELECT * FROM report;
UPDATE report SET report_status = '반려' WHERE report_code = 2;