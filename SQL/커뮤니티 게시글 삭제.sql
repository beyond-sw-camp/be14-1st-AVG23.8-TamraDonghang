-- 3. 게시글 삭제
UPDATE community
SET com_title = '삭제된 게시글'
  , com_content = '삭제된 게시글입니다.'
WHERE com_post_code = 3;

-- 커뮤니티 게시글 테이블 데이터 확인
SELECT * FROM community c ORDER BY com_post_code = 3;
SELECT * FROM community;