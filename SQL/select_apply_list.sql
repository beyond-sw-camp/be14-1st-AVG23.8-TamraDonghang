-- 동행 신청 목록 조회
-- 신청 목록 테이블에서 전체 동행 신청 기록을 수락 여부가 '수락'인 경우로 조회할 수 있다.

-- 전체 동행 신청 목록 조회 
SELECT 
  a.acc_post_code AS '게시물 번호'
 , a.user_code AS '신청자'
 , a.accept_or_not AS '신청 상태' 
FROM apply_list a; 

-- 특정 동행 모집 게시글에 대한 신청 목록 조회
SELECT 
	*
	FROM apply_list
WHERE acc_post_code = 1;

-- 신청 목록 테이블에서 수락 여부가 'Y'인 경우로 조회
SELECT *
FROM apply_list
WHERE accept_or_not = '수락'; 
