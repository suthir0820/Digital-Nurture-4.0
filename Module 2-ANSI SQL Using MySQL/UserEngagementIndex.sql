SELECT 
    u.full_name,
    COUNT(r.registration_id) as events_attended,
    COUNT(f.feedback_id) as feedbacks_submitted
FROM Users u
LEFT JOIN Registrations r ON u.user_id = r.user_id
LEFT JOIN Feedback f ON u.user_id = f.user_id
GROUP BY u.user_id, u.full_name;