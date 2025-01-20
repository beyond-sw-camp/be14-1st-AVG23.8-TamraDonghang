-- 동행 신청자 조회
-- 신청 목록 테이블에서 특정 모집 게시글에 대한 신청자 목록을 
-- 수락 여부가 '수락'인 경우로 조회할 수 있다. 

SELECT * FROM apply_list;

-- 특정 모집 게시글에 대한 신청자 조회 
SELECT 
	acc_post_code AS '게시글 번호'
	, user_code AS '회원번호'
	, accept_or_not AS '신청상태'
	FROM apply_list
WHERE acc_post_code = 4 AND apply_list.accept_or_not='수락';


