SELECT 
    s.speaker_name,
    COUNT(s.session_id) as session_count
FROM Sessions s
GROUP BY s.speaker_name
HAVING COUNT(s.session_id) > 1;