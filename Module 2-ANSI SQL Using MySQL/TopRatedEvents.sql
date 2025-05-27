SELECT 
    e.title,
    AVG(f.rating) as avg_rating,
    COUNT(f.feedback_id) as feedback_count
FROM Events e
JOIN Feedback f ON e.event_id = f.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(f.feedback_id) >= 10
ORDER BY avg_rating DESC;