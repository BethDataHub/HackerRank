SELECT CASE WHEN grade < 8 THEN NULL ELSE name END name, 
    grade, 
    marks
FROM students
JOIN grades ON students.marks BETWEEN grades.min_mark AND max_mark
ORDER BY grade DESC, 
    name ASC, 
    marks ASC;