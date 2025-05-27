SELECT 
    e.title,
    COUNT(s.session_id) as session_count
FROM Events e
LEFT JOIN Sessions s ON e.event_id = s.event_id
    AND TIME(s.start_time) BETWEEN '10:00:00' AND '12:00:00'
    AND TIME(s.end_time) BETWEEN '10:00:00' AND '12:00:00'
GROUP BY e.event_id, e.title;