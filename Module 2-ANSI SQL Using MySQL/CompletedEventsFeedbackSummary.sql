SELECT 
    e.title,
    COUNT(r.registration_id) as total_registrations,
    AVG(f.rating) as avg_rating
FROM Events e
LEFT JOIN Registrations r ON e.event_id = r.event_id
LEFT JOIN Feedback f ON e.event_id = f.event_id
WHERE e.status = 'completed'
GROUP BY e.event_id, e.title;