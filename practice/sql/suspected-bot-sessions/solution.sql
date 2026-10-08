select session_id, user_id, session_duration_sec from user_sessions
where session_duration_sec <100 and extract(year from session_start) = '2026';
