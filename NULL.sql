-- Select the code which uses an outer join correctly.
SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id);

-- Select the correct statement that shows the name of department which employs Cutflower -
SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower';

-- Select out of following the code which uses a JOIN to show a list of all the departments and number of employed teachers
SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name;

-- Using SELECT name, dept, COALESCE(dept, 0) AS result FROM teacher on teacher table will:
display 0 in result column for all teachers without department;

-- 'four' for Throd
SELECT name,
       CASE WHEN phone = 2752 THEN 'two'
            WHEN phone = 2753 THEN 'three'
            WHEN phone = 2754 THEN 'four'
            END AS digit
  FROM teacher;

-- This code will print Computing for Shrivell, Throd and Splint and other for the others:
SELECT name, 
      CASE 
       WHEN dept 
        IN (1) 
        THEN 'Computing' 
       ELSE 'Other' 
      END 
  FROM teacher;
