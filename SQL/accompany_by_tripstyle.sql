-- 여행 스타일별 동행 모집글 조회
-- 동행 모집 게시글 목록에서 특정 여행 스타일이 태그된 글 목록을 조회할 수 있다. 

SELECT 
	a.prefer_travel_style  AS '선호 여행 스타일 번호'
	, t.trip_style_name	AS '선호 여행 스타일 이름'
	, a.acc_post_code AS '게시글 번호' 
FROM accompany a
LEFT JOIN tripstyle t ON a.prefer_travel_style = t.trip_style_code
ORDER BY -a.prefer_travel_style desc;


-- 여행 스타일 별 동행 모집 게시글 수
SELECT 
    a.prefer_travel_style AS '선호 여행 스타일 번호',
    t.trip_style_name AS '선호 여행 스타일 이름',
    COUNT(a.acc_post_code) AS '모집글 수'
FROM accompany a
LEFT JOIN tripstyle t ON a.prefer_travel_style = t.trip_style_code
GROUP BY a.prefer_travel_style, t.trip_style_name
ORDER BY '모집글 수' DESC;

