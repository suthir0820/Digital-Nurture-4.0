SELECT 
    e.title,
    s1.title as session1,
    s1.start_time as session1_start,
    s1.end_time as session1_end,
    s2.title as session2,
    s2.start_time as session2_start,
    s2.end_time as session2_end
FROM Events e
JOIN Sessions s1 ON e.event_id = s1.event_id
JOIN Sessions s2 ON e.event_id = s2.event_id
WHERE s1.session_id < s2.session_id
  AND (s1.start_time < s2.end_time AND s1.end_time > s2.start_time);