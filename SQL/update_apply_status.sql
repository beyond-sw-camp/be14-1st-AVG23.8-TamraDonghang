-- 동행 신청 수락/거부
-- 동행 모집 게시글 작성자는 동행 신청 목록 테이블에서 
-- 특정 회원에 대한 동행 신청 수락 여부(수락, 거절)로 변경할 수 있다. 

SELECT 
	acc_post_code AS '게시글 번호',
	user_code AS '신청자번호',
	accept_or_not AS '신청상태'
FROM apply_list; 

-- 대기중인 신청내역 수락으로 변경
UPDATE apply_list
SET accept_or_not = '거절'
WHERE acc_post_code = 2 AND user_code = 2;

-- 대기중인 신청내역 거절로 변경