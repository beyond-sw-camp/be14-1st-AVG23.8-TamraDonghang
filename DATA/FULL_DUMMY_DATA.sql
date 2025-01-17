-- user
INSERT INTO user (user_id, user_gender, user_password, user_name, user_birth, user_phonenum, user_smoke, user_local, user_type, user_report_count, user_act_status, blacklist)
VALUES 
('user01', 'M', 'password1', 'John Doe', '1990-01-01', '010-1234-5678', 'N', 'Seoul', '회원', 0, 'Y', 'N'),
('user02', 'F', 'password2', 'Jane Smith', '1992-02-02', '010-2345-6789', 'Y', 'Busan', '회원', 0, 'Y', 'N'),
('user03', 'M', 'password3', 'Tom Brown', '1988-03-03', '010-3456-7890', 'N', 'Incheon', '회원', 1, 'Y', 'N'),
('user04', 'F', 'password4', 'Alice Green', '1995-04-04', '010-4567-8901', 'Y', 'Daegu', '회원', 0, 'Y', 'N'),
('user05', 'M', 'password5', 'Mike White', '1985-05-05', '010-5678-9012', 'N', 'Gwangju', '회원', 0, 'Y', 'N'),
('user06', 'F', 'password6', 'Sophia Black', '1998-06-06', '010-6789-0123', 'N', 'Daejeon', '회원', 2, 'Y', 'N'),
('user07', 'M', 'password7', 'Chris Lee', '1993-07-07', '010-7890-1234', 'Y', 'Ulsan', '회원', 0, 'Y', 'N'),
('user08', 'F', 'password8', 'Emma Kim', '1991-08-08', '010-8901-2345', 'N', 'Sejong', '회원', 0, 'Y', 'N'),
('user09', 'M', 'password9', 'David Park', '1987-09-09', '010-9012-3456', 'Y', 'Jeju', '회원', 3, 'Y', 'N'),
('user10', 'F', 'password10', 'Olivia Jung', '1999-10-10', '010-0123-4567', 'N', 'Suwon', '회원', 0, 'Y', 'N'),
('user11', 'M', 'password11', 'Liam Choi', '1994-11-11', '010-1234-5670', 'N', 'Goyang', '회원', 0, 'Y', 'N'),
('user12', 'F', 'password12', 'Ava Jeong', '1996-12-12', '010-2345-6780', 'Y', 'Changwon', '회원', 1, 'Y', 'N'),
('user13', 'M', 'password13', 'Noah Yoon', '1989-01-13', '010-3456-7891', 'N', 'Pohang', '회원', 0, 'Y', 'N'),
('user14', 'F', 'password14', 'Isabella Cho', '1997-02-14', '010-4567-8902', 'N', 'Cheonan', '회원', 0, 'Y', 'N'),
('user15', 'M', 'password15', 'Lucas Hong', '1986-03-15', '010-5678-9013', 'Y', 'Ansan', '회원', 0, 'Y', 'N'),
('user16', 'F', 'password16', 'Mia Kang', '1993-04-16', '010-6789-0124', 'N', 'Anyang', '회원', 0, 'Y', 'N'),
('user17', 'M', 'password17', 'Ethan Seo', '1990-05-17', '010-7890-1235', 'Y', 'Cheongju', '회원', 0, 'Y', 'N'),
('user18', 'F', 'password18', 'Amelia Jang', '1995-06-18', '010-8901-2346', 'N', 'Yeosu', '회원', 0, 'Y', 'N'),
('user19', 'M', 'password19', 'Mason Moon', '1988-07-19', '010-9012-3457', 'N', 'Jeonju', '관리자', 2, 'Y', 'N'),
('user20', 'F', 'password20', 'Charlotte Lim', '1992-08-20', '010-0123-4568', 'Y', 'Chuncheon', '관리자', 0, 'Y', 'N');

-- 지역 local_list
INSERT INTO local_list(local_name)
VALUES('서귀포'), ('제주 시내'), ('성산'), ('우도'), ('애월'), ('한림'), ('중문'), ('기타');

-- 선호 여행 스타일 tripstyle
INSERT INTO tripstyle(trip_style_name)
VALUES('J형'), ('P형'), ('액티비티'), ('호캉스'), ('관광'), ('맛집 탐방'), ('인생샷');

-- accompany
INSERT INTO accompany (acc_status, acc_start_date, acc_end_date, acc_deadline, acc_member_limit, acc_post_title, acc_post_content, acc_age_cond, acc_sex_cond, acc_is_smoker, prefer_travel_style, acc_post_writer_code)
VALUES 
('모집중', '2025-01-20 10:00:00', '2025-01-25 18:00:00', '2025-01-19 23:59:59', 5, '제주도 힐링 여행', '제주도로 힐링 여행 떠나실 분 모집합니다.', 2, 'F', 'N', 1, 1),
('모집중', '2025-02-10 08:00:00', '2025-02-15 20:00:00', '2025-02-08 23:59:59', 3, '제주도 커피 투어', '제주도에서 커피 투어 함께하실 분 모집합니다.', 1, 'M', 'N', 2, 2),
('모집완료', '2025-03-05 09:00:00', '2025-03-10 19:00:00', '2025-03-01 23:59:59', 4, ' 제주도 여행', '제주도에서 즐거운 시간 보내실 분 구합니다.', 3, 'F', 'Y', 3, 3),
('모집중', '2025-04-01 07:00:00', '2025-04-05 22:00:00', '2025-03-28 23:59:59', 6, '한라산 등반', '한라산 등반 여행 떠나실 분 구합니다.', 0, 'M', 'N', 4, 4),
('모집중', '2025-05-10 10:00:00', '2025-05-12 18:00:00', '2025-05-08 23:59:59', 8, '제주 맛집 투어', '제주의 맛집을 함께 탐방하실 분 구합니다.', 2, 'F', 'N', 1, 5),
('모집중', '2025-06-15 06:00:00', '2025-06-20 21:00:00', '2025-06-12 23:59:59', 5, '제주 역사 여행', '제주의 역사적인 명소를 탐방할 분 모집합니다.', 1, 'M', 'Y', 2, 6),
('모집완료', '2025-07-01 08:00:00', '2025-07-07 20:00:00', '2025-06-28 23:59:59', 3, '제주 힐링 여행', '제주로 힐링 여행 가실 분 구합니다.', 3, 'F', 'N', 3, 7),
('모집중', '2025-08-20 09:00:00', '2025-08-25 18:00:00', '2025-08-18 23:59:59', 7, '제주 바다 여행', '제주에서 바다를 즐길 분 모집합니다.', 2, 'M', 'N', 4, 8),
('모집중', '2025-09-15 07:00:00', '2025-09-20 19:00:00', '2025-09-12 23:59:59', 6, '제주 미술관 투어', '제주의 미술관 투어를 함께 하실 분 모집합니다.', 0, 'F', 'Y', 1, 9),
('모집중', '2025-10-10 06:00:00', '2025-10-15 22:00:00', '2025-10-07 23:59:59', 5, '제주도 여행', '제주도로 전통 문화를 즐기실 분 구합니다.', 1, 'M', 'N', 2, 10),
('모집완료', '2025-11-01 09:00:00', '2025-11-05 18:00:00', '2025-10-28 23:59:59', 4, '제주 바다 낚시', '제주에서 낚시를 즐기실 분 모집합니다.', 3, 'F', 'N', 3, 11),
('모집중', '2025-12-10 08:00:00', '2025-12-15 21:00:00', '2025-12-08 23:59:59', 5, '제주도 축제', '제주도 축제를 함께 하실 분 모집합니다.', 2, 'M', 'Y', 4, 12),
('모집중', '2025-01-10 10:00:00', '2025-01-15 20:00:00', '2025-01-07 23:59:59', 6, '제주 전통 문화 탐방', '제주에서 전통 문화를 탐방하실 분 구합니다.', 0, 'F', 'N', 1, 13),
('모집중', '2025-02-15 07:00:00', '2025-02-20 22:00:00', '2025-02-12 23:59:59', 4, '제주 와인 투어', '제주에서 와인 투어를 즐기실 분 모집합니다.', 1, 'M', 'N', 2, 14),
('모집완료', '2025-03-25 06:00:00', '2025-03-30 19:00:00', '2025-03-22 23:59:59', 5, '제주 트래킹 여행', '제주에서 트래킹 즐기실 분 구합니다.', 3, 'F', 'Y', 3, 15),
('모집중', '2025-04-20 09:00:00', '2025-04-25 21:00:00', '2025-04-18 23:59:59', 6, '제주 낭만 여행', '제주에서 낭만적인 여행을 즐기실 분 구합니다.', 2, 'M', 'N', 4, 16),
('모집중', '2025-05-05 08:00:00', '2025-05-10 20:00:00', '2025-05-03 23:59:59', 4, '제주 서핑 여행', '제주에서 서핑을 즐기실 분 모집합니다.', 0, 'F', 'N', 1, 17),
('모집중', '2025-06-15 10:00:00', '2025-06-20 18:00:00', '2025-06-12 23:59:59', 3, '제주 낭만 여행', '제주에서 낭만을 즐기실 분 구합니다.', 1, 'M', 'Y', 2, 18),
('모집완료', '2025-07-01 09:00:00', '2025-07-05 22:00:00', '2025-06-28 23:59:59', 5, '제주 바다 여행', '제주도 바다에서 자연을 느끼실 분 구합니다.', 3, 'F', 'N', 3, 19),
('모집중', '2025-08-20 07:00:00', '2025-08-25 20:00:00', '2025-08-17 23:59:59', 6, '제주 바다 낚시 여행', '제주의 아름다운 바다에서 낚시를 즐기실 분 구합니다.', 2, 'M', 'N', 4, 20);

-- 나머지 INSERT 문은 동일합니다.


-- 중복되지 않도록 적절한 값으로 삽입
INSERT INTO local_post (local_code, acc_post_code)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16);


-- plan
INSERT INTO plan (plan_title, plan_content, plan_start_date, plan_end_date, local_code, acc_post_code)
VALUES 
('제주도 도착 및 휴식', '제주 공항 도착 후 숙소 체크인 및 휴식', '2025-03-15 14:00:00', '2025-03-15 18:00:00', 1, 1),
('올레길 산책', '제주 올레길을 따라 걷고 바다 풍경 감상', '2025-03-16 09:00:00', '2025-03-16 16:00:00', 1, 1),
('우도 투어', '배를 타고 우도로 이동해 경치 감상 및 현지 음식을 즐김', '2025-03-17 10:00:00', '2025-03-17 17:00:00', 1, 1),
('성산 일출봉 등반', '성산 일출봉 등반 및 주변 관광', '2025-03-18 06:00:00', '2025-03-18 12:00:00', 1, 1),
('휴양과 스파', '제주도의 고급 스파에서 피로를 푸는 시간', '2025-03-19 14:00:00', '2025-03-19 18:00:00', 1, 1),
('한라산 국립공원 하이킹', '한라산 국립공원에서 등산하며 자연 감상', '2025-04-11 08:00:00', '2025-04-11 16:00:00', 1, 2),
('용두암 방문', '제주 용두암에서 사진 촬영 및 바다 감상', '2025-04-12 10:00:00', '2025-04-12 12:00:00', 1, 2),
('제주 동문시장 투어', '현지 시장에서 로컬 음식을 체험', '2025-04-12 13:00:00', '2025-04-12 15:00:00', 1, 2),
('협재 해수욕장 방문', '협재 해수욕장에서 여유로운 시간 보내기', '2025-04-13 11:00:00', '2025-04-13 16:00:00', 1, 2),
('카페 투어', '제주의 유명 카페에서 커피와 디저트 즐기기', '2025-04-13 17:00:00', '2025-04-13 19:00:00', 1, 2),
('곶자왈 숲길 산책', '제주 곶자왈에서 자연 산책과 힐링', '2025-03-16 08:00:00', '2025-03-16 11:00:00', 1, 1),
('제주 해녀 체험', '제주 해녀 문화를 배우고 체험하는 시간', '2025-03-17 09:00:00', '2025-03-17 12:00:00', 1, 1),
('서귀포 폭포 방문', '천지연 폭포와 정방폭포 방문', '2025-03-18 13:00:00', '2025-03-18 17:00:00', 1, 1),
('오름 등반', '제주 오름에서 일출 감상 및 사진 촬영', '2025-03-19 06:00:00', '2025-03-19 08:00:00', 1, 1),
('유채꽃밭 방문', '제주의 유채꽃밭에서 사진 촬영과 산책', '2025-03-19 10:00:00', '2025-03-19 12:00:00', 1, 1),
('해안도로 드라이브', '제주 해안도로를 따라 드라이브하며 경치 감상', '2025-04-12 09:00:00', '2025-04-12 11:00:00', 1, 2),
('제주 미로공원 체험', '제주 미로공원에서 즐거운 체험', '2025-04-12 14:00:00', '2025-04-12 16:00:00', 1, 2),
('흑돼지 바비큐 체험', '제주의 특산물 흑돼지 바비큐를 즐기기', '2025-04-12 18:00:00', '2025-04-12 20:00:00', 1, 2),
('비양도 탐방', '비양도로 이동해 트래킹과 자연 감상', '2025-04-13 09:00:00', '2025-04-13 13:00:00', 1, 2),
('마무리 및 출발', '제주에서 마지막 날 아침을 보내고 공항으로 이동', '2025-04-13 14:00:00', '2025-04-13 16:00:00', 1, 2);

-- apply_list
INSERT INTO apply_list (acc_post_code, user_code, accept_or_not)
VALUES 
(1, 2, '수락'),
(1, 3, '수락'),
(1, 4, '대기중'),
(1, 5, '거절'),
(2, 1, '수락'),
(2, 6, '수락'),
(2, 7, '대기중'),
(2, 8, '거절'),
(3, 2, '수락'),
(3, 9, '수락'),
(3, 10, '대기중'),
(3, 11, '거절'),
(4, 3, '수락'),
(4, 12, '수락'),
(4, 13, '대기중'),
(4, 14, '거절'),
(5, 4, '수락'),
(5, 15, '수락'),
(5, 16, '대기중'),
(5, 17, '거절');

-- review
INSERT INTO review (review_rating, review_content, acc_post_code, review_target_code, reviewer_code)
VALUES 
(4.5, '친절하고 함께 여행하기 좋았습니다.', 1, 2, 3),
(5.0, '멋진 여행 동행이었습니다!', 1, 3, 2),
(4.0, '대체로 좋았지만 약간 늦는 경우가 있었습니다.', 1, 4, 2),
(3.5, '무난했지만 더 친절했으면 좋겠어요.', 1, 5, 4),
(5.0, '정말 멋진 여행을 함께 했습니다.', 2, 1, 6),
(4.5, '유쾌하고 즐거운 시간이었어요.', 2, 6, 1),
(4.0, '소통이 잘 되었고 여행이 즐거웠습니다.', 2, 7, 6),
(3.0, '기대했던 만큼은 아니었어요.', 2, 8, 7),
(4.8, '다시 동행하고 싶은 분입니다.', 3, 2, 9),
(4.6, '분위기가 정말 좋았어요.', 3, 9, 2),
(3.5, '여행 스타일이 조금 달랐어요.', 3, 10, 9),
(4.2, '친절하고 적극적인 분이었습니다.', 3, 11, 10),
(4.9, '정말 만족스러운 여행이었어요.', 4, 3, 12),
(4.3, '배려심이 많고 즐거웠습니다.', 4, 12, 3),
(3.8, '조금 더 소통이 원활했으면 좋겠습니다.', 4, 13, 12),
(4.7, '정말 멋진 동행이었어요.', 4, 14, 13),
(5.0, '완벽한 여행 파트너였습니다.', 5, 4, 15),
(4.4, '분위기를 잘 이끌어 주셨어요.', 5, 15, 4),
(3.9, '조금 더 활발한 소통을 원합니다.', 5, 16, 15),
(4.5, '즐거운 여행이었습니다.', 5, 17, 16);

-- acc_post_comment
INSERT INTO acc_post_comment (acc_comment_content, acc_post_code, acc_comment_writer_code)
VALUES 
('정말 기대되는 여행입니다!', 1, 2),
('이 일정에 저도 참여하고 싶어요.', 1, 3),
('궁금한 점이 있는데, 더 자세히 알 수 있을까요?', 1, 4),
('멋진 계획이네요! 잘 부탁드립니다.', 1, 5),
('우도 여행 일정이 너무 좋네요!', 2, 1),
('저도 같은 일정으로 참여할 예정입니다.', 2, 6),
('참여 신청했어요! 기대됩니다.', 2, 7),
('한라산 등반도 포함되면 좋겠어요!', 2, 8),
('계획이 정말 세세하게 짜여 있네요.', 3, 9),
('혹시 다른 분들과 만나는 시간은 정해졌나요?', 3, 10),
('협재 해수욕장이 포함된 점이 좋습니다.', 3, 11),
('정말 좋은 기회 같아요. 잘 부탁드립니다.', 3, 12),
('성산 일출봉 일정이 특히 기대됩니다!', 4, 3),
('제가 직접 가본 곳이라 추천드리고 싶어요.', 4, 13),
('사진 찍기에 좋은 장소도 있나요?', 4, 14),
('모임 시간과 장소는 어디인가요?', 4, 15),
('여행 준비물 관련해서 공지 부탁드려요.', 5, 4),
('동행하시는 분들 모두 기대됩니다.', 5, 16),
('여행 스타일이 잘 맞을 것 같아요.', 5, 17),
('우천 시 대체 일정도 준비되어 있나요?', 5, 18);

-- acc_pic
INSERT INTO acc_pic (acc_pic_path, acc_pic_name, acc_pic_rename, acc_post_code, acc_is_thumbnail)
VALUES 
('/images/acc/jeju_trip1.jpg', 'jeju_trip1.jpg', 'jeju_trip1_thumb.jpg', 1, 'Y'),
('/images/acc/jeju_trip2.jpg', 'jeju_trip2.jpg', 'jeju_trip2_thumb.jpg', 1, 'N'),
('/images/acc/jeju_trip3.jpg', 'jeju_trip3.jpg', 'jeju_trip3_thumb.jpg', 1, 'N'),
('/images/acc/jeju_trip4.jpg', 'jeju_trip4.jpg', 'jeju_trip4_thumb.jpg', 2, 'Y'),
('/images/acc/jeju_trip5.jpg', 'jeju_trip5.jpg', 'jeju_trip5_thumb.jpg', 2, 'N'),
('/images/acc/jeju_trip6.jpg', 'jeju_trip6.jpg', 'jeju_trip6_thumb.jpg', 2, 'N'),
('/images/acc/jeju_trip7.jpg', 'jeju_trip7.jpg', 'jeju_trip7_thumb.jpg', 3, 'Y'),
('/images/acc/jeju_trip8.jpg', 'jeju_trip8.jpg', 'jeju_trip8_thumb.jpg', 3, 'N'),
('/images/acc/jeju_trip9.jpg', 'jeju_trip9.jpg', 'jeju_trip9_thumb.jpg', 3, 'N'),
('/images/acc/jeju_trip10.jpg', 'jeju_trip10.jpg', 'jeju_trip10_thumb.jpg', 4, 'Y'),
('/images/acc/jeju_trip11.jpg', 'jeju_trip11.jpg', 'jeju_trip11_thumb.jpg', 4, 'N'),
('/images/acc/jeju_trip12.jpg', 'jeju_trip12.jpg', 'jeju_trip12_thumb.jpg', 4, 'N'),
('/images/acc/jeju_trip13.jpg', 'jeju_trip13.jpg', 'jeju_trip13_thumb.jpg', 5, 'Y'),
('/images/acc/jeju_trip14.jpg', 'jeju_trip14.jpg', 'jeju_trip14_thumb.jpg', 5, 'N'),
('/images/acc/jeju_trip15.jpg', 'jeju_trip15.jpg', 'jeju_trip15_thumb.jpg', 5, 'N'),
('/images/acc/jeju_trip16.jpg', 'jeju_trip16.jpg', 'jeju_trip16_thumb.jpg', 6, 'Y'),
('/images/acc/jeju_trip17.jpg', 'jeju_trip17.jpg', 'jeju_trip17_thumb.jpg', 6, 'N'),
('/images/acc/jeju_trip18.jpg', 'jeju_trip18.jpg', 'jeju_trip18_thumb.jpg', 6, 'N'),
('/images/acc/jeju_trip19.jpg', 'jeju_trip19.jpg', 'jeju_trip19_thumb.jpg', 7, 'Y'),
('/images/acc/jeju_trip20.jpg', 'jeju_trip20.jpg', 'jeju_trip20_thumb.jpg', 7, 'N');

-- community
INSERT INTO community (com_title, com_content, com_post_writer_code)
VALUES 
('제주도 여행 추천 코스', '제주도에서 꼭 가봐야 할 명소들을 추천합니다.', 1),
('여행 중 만난 멋진 사람들', '여행 중 만난 사람들과의 특별한 순간을 공유합니다.', 2),
('제주도 맛집 탐방', '제주도에서 가볼 만한 맛집을 소개합니다.', 3),
('여행 준비물 리스트', '여행을 떠나기 전 꼭 챙겨야 할 준비물 리스트입니다.', 4),
('혼자 여행하기 좋은 장소', '혼자 여행하기 좋은 제주도의 명소들을 소개합니다.', 5),
('동행 모집 공고', '같이 여행할 동행을 모집합니다.', 6),
('여행 스타일 추천', '자신의 여행 스타일에 맞는 여행 코스를 추천해봅니다.', 7),
('여행 중 찍은 사진 공유', '여행 중 찍은 멋진 사진들을 공유해요.', 8),
('여행 중 겪은 에피소드', '여행 중에 겪은 특별한 에피소드를 나눠보세요.', 9),
('제주도에서의 액티비티 추천', '제주도에서 즐길 수 있는 액티비티를 소개합니다.', 10),
('여행 중 겪은 어려움', '여행 중 겪은 어려움과 그에 대한 해결책을 공유합니다.', 11),
('여행을 떠나기 전 체크리스트', '여행 전 체크해야 할 사항들을 정리해보세요.', 12),
('제주도 숙박 추천', '제주도에서 숙박하기 좋은 곳을 추천합니다.', 13),
('여행 중 만난 좋은 사람들', '여행 중 만난 친절한 사람들에 대해 이야기해봅니다.', 14),
('여행지에서의 음식 이야기', '여행지에서 먹었던 음식들을 소개하고 이야기를 나눠요.', 15),
('여행 후 후기', '여행 후의 후기를 남기고 여행지에 대한 의견을 나눕니다.', 16),
('여행 팁과 조언', '여행 중 유용한 팁과 조언을 공유합니다.', 17),
('여행 중 안전을 위한 팁', '여행 중 안전을 위해 유의해야 할 점들을 공유합니다.', 18),
('제주도에서의 일출과 일몰', '제주도에서 볼 수 있는 멋진 일출과 일몰을 소개합니다.', 19),
('여행 준비과정에서의 어려움', '여행 준비 과정에서 겪은 어려움과 해결 방법을 나눠봅니다.', 20);

-- com_comment
INSERT INTO com_comment (com_comment_content, com_post_code, com_comment_writer_code)
VALUES 
('정말 멋진 여행지네요! 추천합니다.', 1, 2),
('제주도는 언제 가도 좋은 곳이에요.', 1, 3),
('저도 제주도 여행을 계획 중인데 도움이 될 것 같아요.', 1, 4),
('추천 코스 너무 좋습니다! 꼭 가봐야겠어요.', 1, 5),
('여기 가봤어요! 정말 좋은 곳이죠.', 2, 6),
('저도 여행 중 만난 사람들과 좋은 추억을 많이 만들었어요.', 2, 7),
('여행에서 만난 사람들과의 소중한 인연, 정말 뜻깊었어요.', 2, 8),
('여행 중 사람들과 소통하는 게 정말 즐거웠습니다.', 2, 9),
('맛집 정보 감사합니다! 꼭 가봐야겠어요.', 3, 10),
('제주도에서 먹었던 음식들이 아직도 기억에 남아요.', 3, 11),
('맛집 리스트 너무 유용하네요! 덕분에 여행이 더 즐거워졌어요.', 3, 12),
('이 리스트대로 여행 준비하고 있어요. 감사합니다!', 4, 13),
('여행 준비물 리스트, 정말 도움이 많이 됐습니다.', 4, 14),
('여행 전에 준비물 체크리스트 꼭 작성해보세요!', 4, 15),
('혼자 여행하기 좋은 제주도 추천지, 유용하게 참고할게요.', 5, 16),
('혼자 여행하는데 제주도가 너무 좋았어요. 감사합니다!', 5, 17),
('혼자 여행하기 좋은 명소를 더 알고 싶어요!', 5, 18),
('동행 모집 공고 보고 왔습니다. 참여하고 싶어요!', 6, 19),
('저도 동행 모집에 참여하고 싶어요. 연락주세요!', 6, 20),
('여행 스타일에 맞는 코스를 추천해주셔서 감사합니다.', 7, 1);

-- com_pic
INSERT INTO com_pic (com_pic_path, com_pic_name, com_pic_rename, com_post_code, com_is_thumbnail)
VALUES 
('/images/com/jeju_community1.jpg', 'jeju_community1.jpg', 'jeju_community1_thumb.jpg', 1, 'Y'),
('/images/com/jeju_community2.jpg', 'jeju_community2.jpg', 'jeju_community2_thumb.jpg', 1, 'N'),
('/images/com/jeju_community3.jpg', 'jeju_community3.jpg', 'jeju_community3_thumb.jpg', 1, 'N'),
('/images/com/jeju_community4.jpg', 'jeju_community4.jpg', 'jeju_community4_thumb.jpg', 2, 'Y'),
('/images/com/jeju_community5.jpg', 'jeju_community5.jpg', 'jeju_community5_thumb.jpg', 2, 'N'),
('/images/com/jeju_community6.jpg', 'jeju_community6.jpg', 'jeju_community6_thumb.jpg', 2, 'N'),
('/images/com/jeju_community7.jpg', 'jeju_community7.jpg', 'jeju_community7_thumb.jpg', 3, 'Y'),
('/images/com/jeju_community8.jpg', 'jeju_community8.jpg', 'jeju_community8_thumb.jpg', 3, 'N'),
('/images/com/jeju_community9.jpg', 'jeju_community9.jpg', 'jeju_community9_thumb.jpg', 3, 'N'),
('/images/com/jeju_community10.jpg', 'jeju_community10.jpg', 'jeju_community10_thumb.jpg', 4, 'Y'),
('/images/com/jeju_community11.jpg', 'jeju_community11.jpg', 'jeju_community11_thumb.jpg', 4, 'N'),
('/images/com/jeju_community12.jpg', 'jeju_community12.jpg', 'jeju_community12_thumb.jpg', 4, 'N'),
('/images/com/jeju_community13.jpg', 'jeju_community13.jpg', 'jeju_community13_thumb.jpg', 5, 'Y'),
('/images/com/jeju_community14.jpg', 'jeju_community14.jpg', 'jeju_community14_thumb.jpg', 5, 'N'),
('/images/com/jeju_community15.jpg', 'jeju_community15.jpg', 'jeju_community15_thumb.jpg', 5, 'N'),
('/images/com/jeju_community16.jpg', 'jeju_community16.jpg', 'jeju_community16_thumb.jpg', 6, 'Y'),
('/images/com/jeju_community17.jpg', 'jeju_community17.jpg', 'jeju_community17_thumb.jpg', 6, 'N'),
('/images/com/jeju_community18.jpg', 'jeju_community18.jpg', 'jeju_community18_thumb.jpg', 6, 'N'),
('/images/com/jeju_community19.jpg', 'jeju_community19.jpg', 'jeju_community19_thumb.jpg', 7, 'Y'),
('/images/com/jeju_community20.jpg', 'jeju_community20.jpg', 'jeju_community20_thumb.jpg', 7, 'N');

-- profile_pic
INSERT INTO profile_pic (pro_pic_path, pro_pic_name, pro_pic_rename, user_code)
VALUES 
('/images/profile/user1.jpg', 'user1.jpg', 'user1_thumb.jpg', 1),
('/images/profile/user2.jpg', 'user2.jpg', 'user2_thumb.jpg', 2),
('/images/profile/user3.jpg', 'user3.jpg', 'user3_thumb.jpg', 3),
('/images/profile/user4.jpg', 'user4.jpg', 'user4_thumb.jpg', 4),
('/images/profile/user5.jpg', 'user5.jpg', 'user5_thumb.jpg', 5),
('/images/profile/user6.jpg', 'user6.jpg', 'user6_thumb.jpg', 6),
('/images/profile/user7.jpg', 'user7.jpg', 'user7_thumb.jpg', 7),
('/images/profile/user8.jpg', 'user8.jpg', 'user8_thumb.jpg', 8),
('/images/profile/user9.jpg', 'user9.jpg', 'user9_thumb.jpg', 9),
('/images/profile/user10.jpg', 'user10.jpg', 'user10_thumb.jpg', 10),
('/images/profile/user11.jpg', 'user11.jpg', 'user11_thumb.jpg', 11),
('/images/profile/user12.jpg', 'user12.jpg', 'user12_thumb.jpg', 12),
('/images/profile/user13.jpg', 'user13.jpg', 'user13_thumb.jpg', 13),
('/images/profile/user14.jpg', 'user14.jpg', 'user14_thumb.jpg', 14),
('/images/profile/user15.jpg', 'user15.jpg', 'user15_thumb.jpg', 15),
('/images/profile/user16.jpg', 'user16.jpg', 'user16_thumb.jpg', 16),
('/images/profile/user17.jpg', 'user17.jpg', 'user17_thumb.jpg', 17),
('/images/profile/user18.jpg', 'user18.jpg', 'user18_thumb.jpg', 18),
('/images/profile/user19.jpg', 'user19.jpg', 'user19_thumb.jpg', 19),
('/images/profile/user20.jpg', 'user20.jpg', 'user20_thumb.jpg', 20);

-- personal_trip_style
INSERT INTO personal_trip_style (user_code, trip_style_code)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 3),
(8, 4),
(9, 1),
(10, 2),
(11, 3),
(12, 4),
(13, 1),
(14, 2),
(15, 3),
(16, 4),
(17, 1),
(18, 2),
(19, 3),
(20, 4);

-- 신고 사유 report_reason
INSERT INTO report_reason(report_reason_name)
VALUES('부적절한 언행 및 컨텐츠'), ('사기 및 신뢰 위반'), ('안전 위협 및 불법 행위'), ('서비스 및 커뮤니티 방해');
	
-- report
INSERT INTO report (reporter_user_code, reported_user_code, report_reason_code)
VALUES 
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 1),
(6, 7, 2),
(7, 8, 3),
(8, 9, 4),
(9, 10, 1),
(10, 11, 2),
(11, 12, 3),
(12, 13, 4),
(13, 14, 1),
(14, 15, 2),
(15, 16, 3),
(16, 17, 4),
(17, 18, 1),
(18, 19, 2),
(19, 20, 3),
(20, 1, 4);

-- 게시판 종류 board
INSERT INTO board(board_name)
VALUES('커뮤니티'),('동행 모집');

-- notice
INSERT INTO notice (notice_title, notice_content, notice_post_writer_code, board_code)
VALUES 
('서비스 점검 안내', '안녕하세요. 서비스 점검이 예정되어 있습니다. 점검 시간 동안 일부 기능이 제한될 수 있습니다.', 20, 1),
('이벤트 종료 안내', '현재 진행 중인 이벤트가 종료됩니다. 참여해 주셔서 감사합니다.', 20, 1),
('회원 규정 변경 안내', '회원 규정이 일부 변경되었습니다. 변경된 규정을 확인해 주세요.', 20, 1),
('새로운 여행 스타일 추가', '새로운 여행 스타일이 추가되었습니다. 다양한 여행 스타일을 확인해 보세요.', 20, 2),
('앱 업데이트 안내', '앱이 업데이트되었습니다. 최신 버전을 다운로드하여 더 나은 서비스를 경험하세요.', 20, 2),
('서비스 이용 정책 안내', '서비스 이용 정책이 변경되었습니다. 새로운 정책을 확인해 주세요.', 19, 2),
('주말 이벤트 안내', '주말에 특별 이벤트가 진행됩니다. 참여해 보세요!', 19, 1),
('시스템 장애 안내', '현재 시스템에 장애가 발생하여 일부 서비스가 정상 작동하지 않습니다. 불편을 드려 죄송합니다.', 19, 2),
('커뮤니티 활동 활성화 안내', '커뮤니티 활동이 활성화되었습니다. 다양한 활동에 참여해 보세요.', 19, 1),
('공지사항 내용 업데이트', '공지사항 내용이 업데이트되었습니다. 최신 내용을 확인해 주세요.', 19, 1),
('여행 스타일 설문조사 안내', '여행 스타일에 관한 설문조사가 진행 중입니다. 설문에 참여해 주세요.', 19, 2),
('모바일 버전 출시', '모바일 버전이 출시되었습니다. 앱을 통해 더 편리하게 이용하세요.', 19, 2),
('여행 추천 서비스 개시', '새로운 여행 추천 서비스가 시작되었습니다. 맞춤 여행 추천을 받아보세요.', 19, 1),
('회원 등급 변경 안내', '회원 등급이 변경되었습니다. 새로운 혜택을 확인해 보세요.', 19, 1),
('고객 센터 운영 시간 변경', '고객 센터의 운영 시간이 변경되었습니다. 새로운 운영 시간을 확인해 주세요.', 19, 2),
('여행 상품 할인 이벤트', '여행 상품에 대한 할인 이벤트가 시작되었습니다. 다양한 상품을 할인된 가격에 구매하세요.', 19, 1),
('서버 점검 일정 안내', '서버 점검이 예정되어 있습니다. 점검 시간 동안 서비스 이용이 불가능합니다.', 19, 2),
('새로운 지역 추가 안내', '새로운 여행지가 추가되었습니다. 새로운 지역을 확인해 보세요.', 19, 1),
('회원 가입 혜택 안내', '회원 가입 시 다양한 혜택을 제공해 드립니다. 가입하고 혜택을 누려 보세요.', 19, 1),
('시스템 업데이트 예정', '시스템 업데이트가 예정되어 있습니다. 업데이트 후 더 나은 서비스를 제공하겠습니다.', 20, 2);
