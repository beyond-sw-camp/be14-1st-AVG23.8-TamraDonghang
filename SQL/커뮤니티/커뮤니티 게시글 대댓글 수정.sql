-- 10. 대댓글 수정

-- 커뮤니티 댓글 테이블 데이터 확인
SELECT * FROM com_comment ORDER BY com_coment_code;

UPDATE com_comment
SET com_coment_content = '수정된 대댓글 입니다.'

WHERE com_coment_code = 4;

SELECT * FROM com_comment ORDER BY com_coment_code;