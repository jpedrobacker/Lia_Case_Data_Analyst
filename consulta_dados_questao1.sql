-- Questao 1 a)
SELECT
	st.name AS student_name,
	c.name AS course_name,
	sc.name AS school_name,
	st.enrolled_at,
	COUNT(st.student_id) AS total_students,
	SUM(c.price) AS total_price
FROM students st
JOIN courses c ON st.course_id = c.course_id
JOIN schools sc ON c.school_id = sc.school_id
WHERE c.name ILIKE 'DATA%'
GROUP BY st.name,
	c.name,
	sc.name,
	st.enrolled_at
ORDER BY st.enrolled_at DESC;

-- Questao 1 b)

