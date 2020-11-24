SELECT teachers.name AS teacher,
  students.name AS student,
  assignments.name AS assignment,
  (ar.completed_at - ar.started_at) AS duration
FROM assistance_requests AS ar
JOIN students
ON ar.student_id = students.id
JOIN teachers
ON ar.teacher_id = teachers.id
LEFT JOIN assignments
ON ar.assignment_id = assignments.id
ORDER BY duration;

