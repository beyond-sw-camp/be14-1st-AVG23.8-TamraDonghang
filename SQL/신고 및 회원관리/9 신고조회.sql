SELECT 
    report_status AS 신고상태,
    COUNT(*) AS 신고건수
FROM 
    report
GROUP BY 
    report_status;
