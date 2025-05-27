SELECT 
    u.full_name,
    u.registration_date
FROM Users u
LEFT JOIN Registrations r ON u.user_id = r.user_id
WHERE u.registration_date BETWEEN DATE_SUB('2025-05-27', INTERVAL 30 DAY) AND '2025-05-27'
  AND r.registration_id IS NULL;