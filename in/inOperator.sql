-- Subqueries with IN
-- The IN operator is a very useful operator in subqueries. To understand it, we will first try a simple query using it directly without subqueries.

-- COUNTRY PHONE CODE
-- Argentina +54
-- Brazil +55
-- Chile +56
-- Colombia +57
-- Spain +34
-- United States +1
-- Mexico +52
-- We want to select all the codes from Argentina, Brazil, Chile or Colombia. One way to approach the problem would be to combine all options with where and multiple or operators. Another option is to use the IN operator as follows:

SELECT *
FROM countries
WHERE country IN ('Argentina', 'Brazil', 'Chile', 'Colombia')
In the same way we can make a query like the following:

SELECT *
FROM table
WHERE column IN (SELECT * from another_table)
-- IN operator with subqueries
-- We have the following table of students

-- STUDENT_ID NAME
-- 1 John
-- 2 Mary
-- 3 Peter
-- 4 Anna
-- and the note table

-- STUDENT_ID AVERAGE_GRADES
-- 1 85
-- 2 65
-- 3 49
-- 4 38
-- We are asked to show the names of all people who have a GPA less than 50.

-- We select the ids from the grades table with average_grades <= 50
-- We select the names from the students table whose id is within the previous subquery.
SELECT name from students
WHERE student_id IN (SELECT student_id from notes)
-- Exercise
-- You have a student table with a code and a name

-- STUDENT_ID NAME
-- 1 John
-- 2 Mary
-- 3 Peter
-- 4 Anna
-- And there is an average table with the student's code and their grade average.

-- STUDENT_ID AVERAGE_GRADES
-- 1 85
-- 2 65
-- 3 49
-- 4 38
-- Shows the names of all students who have a GPA over 50

-- Tip 1: You don't need to group, average or count Tip 2: There is more than one way to solve this exercise, don't get ahead of joins and try to solve it using subqueries


SELECT nombre from estudiantes WHERE student_id IN (SELECT student_id from averages WHERE average_grades > 50)

-- Subqueries with IN part 2
-- Exercise
-- You have the books table

-- BOOK_ID NAME
-- 1 The Odyssey
-- 2 One Hundred Years of Solitude
-- 3 The Little Prince
-- 4 Moby Dick
-- And you have the ratings table

-- BOOK_ID AVERAGE_RATING
-- 1 4.5
-- 2 4.7
-- 3 4.2
-- 4 3.9
-- Create a query that displays all titles with average_rating > 4. The resulting column should be named selected_names.

SELECT name as selected_names from books WHERE book_id IN (SELECT book_id from ratings WHERE average_rating > 4)