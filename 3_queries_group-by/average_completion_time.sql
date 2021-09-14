SELECT students.name as student, avg(assignment_submissions.duration) as average_Assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.id
ORDER BY average_assignment_duration DESC;