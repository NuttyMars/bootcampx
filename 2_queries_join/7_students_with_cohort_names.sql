-- will return all students because students is to the LEFT of the word JOIN.
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- will return all rows from both tables, even when there is no match
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;