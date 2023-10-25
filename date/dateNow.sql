-- Getting tomorrow's date
-- IN SQL it is possible to add dates to obtain future dates. In SQLite we can achieve this by passing a second argument to the DATE function. This sounds complicated but it is simpler than it seems:

-- DATE('now', '1 day')

-- In this example, we are adding 1 day to today's date (now). If we want to add more days, for example 5 days, we will use DATE('now', '5 day').

-- It is also possible to add weeks and months with:

-- 2 Weeks: DATE('now', '2 week') 3 Months: DATE('now', '3 month')

-- In a query this would look like this:

-- SELECT * FROM table where date > DATE('now', '2 week')

-- By adding the time range, the system will automatically calculate the correct date.

-- Exercise:
-- There is a task table with the fields id, description and deadline_date. You are asked to select all the fields of the tasks that have a deadline of tomorrow.


SELECT * FROM tasks WHERE deadline_date = DATE('now','1 day');