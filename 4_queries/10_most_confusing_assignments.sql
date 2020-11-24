SELECT assignments.id,
  assignments.name,
  assignments.day,
  assignments.chapter,
  COUNT(ar.*) AS total_requests
FROM assignments
JOIN assistance_requests AS ar
  ON assignments.id = ar.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;