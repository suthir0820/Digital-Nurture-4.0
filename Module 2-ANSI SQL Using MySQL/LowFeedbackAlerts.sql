SELECT 
    u.full_name,
    e.title,
    f.rating,
    f.comments
FROM Users u
JOIN Feedback f ON u.user_id = f.user_id
JOIN Events e ON f.event_id = e.event_id
WHERE f.rating < 3;