-- Group and average
-- Previously we learned that AVG allows us to calculate the average of the elements of a column in a table. In this exercise we will use it to calculate averages by group.

-- SELECT group, AVG(column) FROM table GROUP by group

-- Exercise
-- Given the following table of students

-- FULL_NAME NOTE
-- Juan Perez 7
-- Juan Perez 8
-- Juan Perez 6
-- Maria Rodriguez 9
-- Maria Rodriguez 7
-- Maria Rodriguez 8
-- Carlos García 6
-- Carlos García 5
-- Carlos García 7
-- Ana Fernandez 8
-- Ana Fernandez 9
-- Ana Fernandez 8
-- Luis Morales 7
-- Luis Morales 6
-- Luis Morales 5

-- Find the grade average for each student. The columns must be named Full_Name and Grade_Average respectively.

-- This exercise has an important assumption: that no two students have the same first and last name. We will discuss these types of assumptions later when we review the concept of integrity.

SELECT full_name, AVG(grade) as GPA FROM students GROUP BY full_name ;