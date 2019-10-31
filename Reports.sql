SELECT a.id AS 'Student Id', s.first_name,  s.last_name AS 'Student Name'
	FROM student AS s
    INNER JOIN assignment AS a
		ON a.student_id = s.id
	INNER JOIN course AS c
		ON c.id = a.course_id
    WHERE 
		a.submit_date > a.due_date


SELECT a.id AS 'Student Id', S.first_name || ' ' || S.last_name AS 'Student Name'
	FROM student AS s
    INNER JOIN assignment AS a
		ON a.student_id = s.id
	INNER JOIN course AS c
		ON c.id = a.course_id
    WHERE 
		a.submit_date > a.due_date


SELECT AVG(a.grade), s.first_name || ' ' || s.last_name AS 'Student Name'
	FROM assignment a
	INNER JOIN student s
		ON s.id = a.student_id
	INNER JOIN course c
		ON c.id = a.course_id
	GROUP BY
		a.student_id