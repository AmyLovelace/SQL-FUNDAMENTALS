-- Add a record assuming a default value
-- When creating a table in SQL, you can assign default values ​​to its columns. This implies that when inserting new data, if a specific value is not provided for a column, the assigned default value will automatically be used.

-- Suppose we want to create a table called "Products" with the following columns:

-- ID (unique product identifier)
-- Name (product name)
-- Price (product price, with a default value of 10)

CREATE TABLE Products (ID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, Price INTEGER DEFAULT 10);

-- If we insert a new product with only the name, the default price value will be automatically used:

-- INSERT INTO Products (Name) VALUES ('Example Product');

-- In this case, the product will be inserted with the value 10 in the Price column.

-- If we want to insert a product with a different price, we simply provide the corresponding value:

INSERT INTO Products (Name, Price) VALUES ('Other Product', 25);

-- exercise
-- Given the users table with the columns id, first name, last name, email and phone, create a new user with the values:

-- name: Lucia
-- Last name: Sánchez
-- email: luciasanchez@outlook.com
-- The telephone column will have the default value 111-1111

INSERT INTO users (first name, last name, email) VALUES ('Lucía','Sánchez','luciasanchez@outlook.com');