-- 공지사항 수정
SELECT * FROM notice;
UPDATE notice SET notice_title = '공지사항 수정 테스트', notice_content = '공지사항 수정', notice_post_update_time = NOW() WHERE notice_code = 2;
SELECT * FROM notice;