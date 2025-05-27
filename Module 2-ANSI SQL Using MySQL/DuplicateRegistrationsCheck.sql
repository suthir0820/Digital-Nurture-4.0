SELECT 
    u.full_name,
    e.title,
    COUNT(r.registration_id) as registration_count
FROM Users u
JOIN Registrations r ON u.user_id = r.user_id
JOIN Events e ON r.event_id = e.event_id
GROUP BY u.user_id, e.event_id, u.full_name, e.title
HAVING COUNT(r.registration_id) > 1;