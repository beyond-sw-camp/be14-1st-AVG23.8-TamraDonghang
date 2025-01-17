-- 회원 계정 상태 관리
UPDATE user SET user_act_status = 'N' WHERE user_id = 'user1';
SELECT * FROM user;