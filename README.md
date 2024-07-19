# MySQL-Notes

---
## What is MySQL
MySQL is a open-source relational database management system an it was first released in 1995,
- ideal for both small and large applications
- very fast, reliable, scalable, and easy to use
- cross-platform
- compliant with the ANSI SQL standard
- developed, distributed, and supported by Oracle Corporation
---

## Contents
<details>
  <summary>01. Retrieving Data From a Single Table</summary>
  
 - 01.SELECT Clause.sql
  ```bash
USE sql_store;

-- Select all data
SELECT *
FROM customers;

-- Select all data order by first_name
SELECT *
FROM customers
ORDER BY first_name;

-- Select specific colums
SELECT
	first_name,
	last_name,
    points,
    points + 10,
    points + 20 AS plus_20,  -- Alias column name
	points + 30 AS "plus 20" -- If we want to add a space, we need to use double quotes
FROM customers;

-- Select unique list of selected column
SELECT DISTINCT state
FROM customers;
  ```

- 02.Where Clause (with AND, OR, NOT).sql
  ```bash
use sql_store;

  -- Where clause is a kind of condition clause. We can use >, >=, <, <=, =, !=, <>, AND, OR, NOT
  SELECT * 
  FROM Customers
  -- WHERE points > 3000;
  -- WHERE state != 'VA';
  -- WHERE birth_date > '1990-01-01' OR (points > 1000 AND state != 'VA');
  WHERE NOT birth_date > '1990-01-01' AND (points > 1000 AND state != 'VA');
  ```

- 03.IN Operator.sql
  ```bash

  ```

- 04.BETWEEN Operator.sql
  ```bash

  ```
- 05.LIKE Operator.sql
  ```bash

  ```
- 06.REGEXP Operator.sql
  ```bash

  ```
- 07.IS NULL Operator.sql
  ```bash

  ```
- 08.ORDER BY Clause.sql
  ```bash

  ```
- 09.LIMIT Clause.sql
  ```bash

  ```
</details>


[02. Retrieving Data From Multiple Tables](02.%20Retrieving%20Data%20From%20Multiple%20Tables)

- 01.INNER JOIN.sql
- 02.Joining Across Databases.sql
- 03.SELF JOIN.sql
- 04.Joining Multiple Tables.sql
- 05.Compound Join Conditions.sql
- 06.Implicit Join Syntax.sql
- 07.OUTER JOIN.sql
- 08.Outer Join Between Multiple Tables.sql
- 09.USING Clause.sql
- 10.CROSS JOIN.sql
- 11.UNIONS.sql

[03. Inserting, Updating, and Deleting Data](03.%20Inserting%2C%20Updating%2C%20and%20Deleting%20Data)

- 01.Inserting a Row.sql
- 02.Inserting Multiple Rows.sql
- 03.Inserting Hierarchical Rows.sql
- 04.Creating a Copy of a Table.sql
- 05.Updating a Single Row.sql
- 06.Updating Multiple Rows.sql
- 07.Using Subqueries in Updates.sql
- 08.Deleting Rows.sql

[04. Summarizing Data](04.%20Summarizing%20Data)

- 01.Aggregate Functions.sql
- 02.GROUP BY Clause.sql
- 03.HAVING Clause.sql
- 04.ROLLUP Operator.sql

[05. Writing Complex Query](05.%20Writing%20Complex%20Query)

- 01.Subqueries.sql
- 02.IN Operator.sql
- 03.ALL Keyword.sql
- 04.ANY Keyword.sql
- 05.Correlated Subqueries.sql
- 06.EXISTS Operator.sql

[06. Essential MySQL Functions](06.%20Essential%20MySQL%20Functions)

- 01.Numeric Functions.sql
- 02.String Functions.sql
- 03.Date Functions.sql
- 04.Formatting Dates and Times.sql
- 05.Calculating Dates and Times.sql
- 06.IFNULL and COALESCE Functions.sql
- 07.IF Function.sql
- 08.CASE Operator.sql

[07. Views](07.%20Views)

- 01.Creating Views.sql
- 02.Updatable Views.sql

[08. Stored Procedures](08.%20Stored%20Procedures)

- 01.Creating a Stored Procedures.sql
- 02.Parameters.sql
- 03.Parameters with Default Value.sql
- 04.Parameter Validation.sql
- 05.Output Parameters.sql
- 06.Variables.sql
- 07.Functions.sql

[09. Triggers and Events](09.%20Triggers%20and%20Events)

- 01.Triggers.sql
- 02.Viewing and Dropping Triggers.sql
- 03.Using Triggers for Auditing.sql
- 04.Events.sql
- 05.Viewing, Dropping and Altering Events.sql

[10. Indexing](10.%20Indexing)

- 01.Creating Indexes.sql
- 02.Prefix Indexes.sql
- 03.FullText Indexes.sql
- 04.Composite Indexes.sql
