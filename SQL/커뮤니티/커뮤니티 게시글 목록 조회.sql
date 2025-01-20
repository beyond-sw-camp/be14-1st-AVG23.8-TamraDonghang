-- 5. 게시글 목록 조회
SELECT com_post_code, com_title, com_content, com_reccomend_count, com_post_view_count, com_post_upload_time
FROM community
ORDER BY com_post_upload_time DESC;