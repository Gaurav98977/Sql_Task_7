
--Creating a View

CREATE VIEW having_data AS
SELECT c.id AS console_id,
       c.generation,
       s.id AS salary_id,
       s.first_name,
       s.last_name,
       s.designation,
       s.age,
       s.salary,
       s.unit
FROM console AS c
INNER JOIN salary AS s
ON c.id = s.id
WHERE s.salary > 50000;


--Update--
select * from console

UPDATE console
SET generation = 'Playstation'
WHERE id IN (
    SELECT console_id 
    FROM having_data 
    WHERE salary_id =47 
)


-- Not Possible to delete
	
delete from having_data
where age = 28 and salary = 56314

---Not Possible to Alter

alter table having_data
add column Hello int;