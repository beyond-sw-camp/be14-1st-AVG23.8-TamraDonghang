-- 공지사항 삭제
SELECT * FROM notice;
DELETE FROM notice WHERE notice_code = 3;
SELECT * FROM notice;