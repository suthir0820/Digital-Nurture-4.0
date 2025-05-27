SELECT 
    DATE_FORMAT(r.registration_date, '%Y-%m') as month,
    COUNT(r.registration_id) as registration_count
FROM Registrations r
WHERE r.registration_date BETWEEN DATE_SUB('2025-05-27', INTERVAL 12 MONTH) AND '2025-05-27'
GROUP BY DATE_FORMAT(r.registration_date, '%Y-%m')
ORDER BY month;