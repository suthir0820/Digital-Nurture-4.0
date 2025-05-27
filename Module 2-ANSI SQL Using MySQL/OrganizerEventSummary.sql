SELECT 
    u.full_name as organizer_name,
    COUNT(CASE WHEN e.status = 'upcoming' THEN 1 END) as upcoming_count,
    COUNT(CASE WHEN e.status = 'completed' THEN 1 END) as completed_count,
    COUNT(CASE WHEN e.status = 'cancelled' THEN 1 END) as cancelled_count,
    COUNT(e.event_id) as total_events
FROM Users u
LEFT JOIN Events e ON u.user_id = e.organizer_id
GROUP BY u.user_id, u.full_name;