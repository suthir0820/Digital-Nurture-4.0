SELECT 
    e.title,
    COUNT(CASE WHEN r.resource_type = 'pdf' THEN 1 END) as pdf_count,
    COUNT(CASE WHEN r.resource_type = 'image' THEN 1 END) as image_count,
    COUNT(CASE WHEN r.resource_type = 'link' THEN 1 END) as link_count,
    COUNT(r.resource_id) as total_resources
FROM Events e
LEFT JOIN Resources r ON e.event_id = r.event_id
GROUP BY e.event_id, e.title;