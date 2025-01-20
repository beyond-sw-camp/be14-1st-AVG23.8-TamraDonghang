-- 공지사항 작성
SELECT * FROM notice;
INSERT INTO notice(notice_title, notice_content, notice_post_writer_code, board_code)
VALUES('공지사항 작성 테스트', '공지사항 작성이 잘 됩니다.', 3, 2);
SELECT * FROM notice;

-- 공지사항 조회
SELECT * FROM notice JOIN board ON notice.board_code = board.board_code WHERE board_name = '커뮤니티';
SELECT * FROM notice JOIN board ON notice.board_code = board.board_code WHERE board_name = '동행 모집';