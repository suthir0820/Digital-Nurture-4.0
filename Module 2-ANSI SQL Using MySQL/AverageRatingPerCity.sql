SELECT 
    e.city,
    AVG(f.rating) as avg_rating
FROM Events e
LEFT JOIN Feedback f ON e.event_id = f.event_id
WHERE f.rating IS NOT NULL
GROUP BY e.city;