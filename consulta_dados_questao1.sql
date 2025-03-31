-- Q1 a)
SELECT  sc.name AS school_name, st.enrolled_at,
    COUNT(st.course_id) AS total_students,
    SUM(c.price) AS total_price
FROM students st
LEFT JOIN courses c ON st.course_id = c.course_id
LEFT JOIN schools sc ON c.school_id = sc.school_id
WHERE c.name ILIKE 'DATA%'
GROUP BY sc.name, st.enrolled_at, st.course_id
ORDER BY st.enrolled_at DESC;

-- Q1 b)
SELECT  sc.name AS school_name, st.enrolled_at,
    COUNT(st.course_id) AS total_students,
    SUM(c.price) AS total_price,
    SUM(COUNT(st.course_id)) OVER (PARTITION BY sc.name ORDER BY st.enrolled_at) AS acumulative_sum,
    AVG(COUNT(st.course_id)) OVER (PARTITION BY sc.name ORDER BY st.enrolled_at ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7_days,
    AVG(COUNT(st.course_id)) OVER (PARTITION BY sc.name ORDER BY st.enrolled_at ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS moving_avg_30_days
FROM students st
LEFT JOIN courses c ON st.course_id = c.course_id
LEFT JOIN schools sc ON c.school_id = sc.school_id
WHERE c.name ILIKE 'DATA%'
GROUP BY sc.name, st.enrolled_at, st.course_id
ORDER BY st.enrolled_at DESC;
