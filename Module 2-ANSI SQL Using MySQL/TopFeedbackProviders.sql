SELECT 
    u.full_name,
    COUNT(f.feedback_id) as feedback_count
FROM Users u
LEFT JOIN Feedback f ON u.user_id = f.user_id
GROUP BY u.user_id, u.full_name
ORDER BY feedback_count DESC
LIMIT 5;