WITH SessionCounts AS (
    SELECT 
        e.title,
        COUNT(s.session_id) as session_count
    FROM Events e
    LEFT JOIN Sessions s ON e.event_id = s.event_id
    GROUP BY e.event_id, e.title
)
SELECT 
    title,
    session_count
FROM SessionCounts
WHERE session_count = (SELECT MAX(session_count) FROM SessionCounts);