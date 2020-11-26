const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const params = process.argv.slice(2);

pool.query(`
SELECT teachers.name AS teacher,
  cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON  teachers.id = teacher_id
JOIN students ON students.id = student_id
LEFT JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${params[0]}%'
GROUP BY teacher, cohort
ORDER BY teacher;;
`)
.then(result => {
  console.log('connected to db');
  
  result.rows.forEach(teacher => {

    console.log(`${teacher.cohort}: ${teacher.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));