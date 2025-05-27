SELECT 
    u.full_name,
    u.email,
    u.registration_date
FROM Users u
LEFT JOIN Registrations r ON u.user_id = r.user_id
    AND r.registration_date >= DATE_SUB('2025-05-27', INTERVAL 90 DAY)
WHERE r.registration_id IS NULL;