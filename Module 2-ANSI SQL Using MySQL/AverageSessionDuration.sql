SELECT 
    e.title,
    AVG(TIMESTAMPDIFF(MINUTE, s.start_time, s.end_time)) as avg_duration_minutes
FROM Events e
LEFT JOIN Sessions s ON e.event_id = s.event_id
WHERE s.start_time IS NOT NULL
GROUP BY e.event_id, e.title;