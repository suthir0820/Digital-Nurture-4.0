SELECT 
    u.city,
    COUNT(DISTINCT r.user_id) as user_count
FROM Users u
JOIN Registrations r ON u.user_id = r.user_id
GROUP BY u.city
ORDER BY user_count DESC
LIMIT 5;