-- 동행 신청 취소
-- 회원 테이블과 동행 모집 게시글 테이블과 신청 목록 테이블을 조인하여 
-- 수락여부 행을 삭제할 수 있다.

SELECT  
	* 
FROM apply_list; 


-- 수락 상태인 경우에도 동행 신청 취소 가능 
DELETE FROM apply_list
WHERE acc_post_code = 1 AND user_code = 2;

-- 대기중 상태인 경우에도 동행 신청 취소 가능
DELETE FROM apply_list
WHERE acc_post_code = 2 AND user_code = 2;
