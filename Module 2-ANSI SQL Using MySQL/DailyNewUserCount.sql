SELECT 
    u.registration_date,
    COUNT(u.user_id) as user_count
FROM Users u
WHERE u.registration_date BETWEEN DATE_SUB('2025-05-27', INTERVAL 7 DAY) AND '2025-05-27'
GROUP BY u.registration_date
ORDER BY u.registration_date;