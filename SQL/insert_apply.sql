-- 동행 신청 접수
-- 회원 테이블과 동행 모집 게시글 테이블과 신청 목록 테이블을 조인하여 
-- 수락여부 행을 생성할 수 있다.

SELECT 
	*
FROM accompany; 

-- 회원은 같은 게시글에 중복으로 신청할 수 없음
INSERT INTO apply_list (acc_post_code, user_code)
VALUES (2, 1);

-- 동행 신청 시 자동 '대기중' 상태로 접수됨.
SELECT * FROM apply_list; 
