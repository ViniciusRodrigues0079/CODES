CREATE DATABASE IF NOT EXISTS `companyHR`;
USE `companyHR`;
CREATE TABLE IF NOT EXISTS `co_employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `em_name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `tel_num` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS`mentorships` (
  `mentor_id` int NOT NULL,
  `mentee_id` int NOT NULL,
  status varchar(255) NOT NULL,
  `project` varchar(255) NOT NULL,
  PRIMARY KEY (`mentor_id`,`mentee_id`,`project`),
  UNIQUE KEY m_constraint (`mentor_id`,`mentee_id`),
  CONSTRAINT fk1 FOREIGN KEY (`mentor_id`) REFERENCES `co_employees` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT fk2 FOREIGN KEY (`mentor_id`) REFERENCES `co_employees` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
);

RENAME TABLE co_employees TO employees;

ALTER TABLE employees
	DROP COLUMN age,
	ADD COLUMN salary FLOAT NOT NULL AFTER tel_num,
    ADD COLUMN years_in_company INT NOT NULL AFTER salary;

DESCRIBE employees;

ALTER TABLE mentorships
	DROP FOREIGN KEY fk2;
    
ALTER TABLE mentorships
	ADD CONSTRAINT `fk2` FOREIGN KEY (`mentor_id`) REFERENCES `cemployees` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
    DROP INDEX m_constraint;
    
INSERT INTO employees (em_name, gender, tel_num, salary, years_in_company) VALUES
('James Lee', 'M', '334-456-7789', 2340, 2),
('John Lane', 'M', '285-704-8553', 1449, 1),
('Walter Smith', 'M', '337-554-1290', 3590, 5),
('Elena Johnson', 'F', '787-699-0025', 2500, 4),
('Juan Díaz', 'M', '549-222-1657', 2219, 3),
('Mary White', 'F', 743-213-6775, 3500, 5),
('James Wolf', 'M', 298-886-1134, 7000, 11),
('Victor Mendes', 'M', 997-501-9722, 4300, 8),
('Jane Brown', 'F', 400-289-2205, 5200, 6),
('Arthur Garcia', 'M', 312-465-7798, 2780, 3),
('Doug Miller', 'M', 478-997-8423, 1800, 1),
('Michael Green', 'M', 114-568-4334, 2330, 3);

INSERT INTO mentorships VALUES
(7, 2, 'ONGOING', 'SQF Limited'),
(1, 3, 'PAST', 'SESI/SENAI' ),
(2, 4, 'ONGOING', 'SQF Limited'),
(5, 8, 'ONGOING', 'SQF Limited'),
(10, 9, 'PAST', 'Flynn Tech');

DESCRIBE employees;
UPDATE employees
SET tel_num = 430-220-7658 WHERE id = 2;
DELETE FROM employees
WHERE id = 3;

;

-- INSERT INTO mentorships VALUES
-- (4, 21, 'Ongoing', 'Flynn Tech');

-- UPDATE employeesm m
-- SET id = 12 WHERE id = 1;

UPDATE employees
SET id = 11 WHERE id = 4;

SELECT em_name, gender FROM employees;

SELECT em_name AS `Employee Name`, gender AS Gender FROM employees;
SELECT em_name AS "Employee Name", gender AS Gender FROM employees;
SELECT em_name AS 'Employee Name', gender AS Gender FROM employees;

SELECT em_name AS 'Employee Name', gender AS Gender FROM employees LIMIT 3;

SELECT gender FROM employees;
SELECT DISTINCT (gender) FROM employees;

SELECT * FROM employees WHERE id != 1;

SELECT * FROM employees WHERE id BETWEEN 1 AND 3;

SELECT * FROM employees WHERE em_name LIKE 'hn';

UPDATE employees
SET tel_num = '334-456-7789' WHERE em_name = 'James Lee',
SET tel_num = '285-704-8553' WHERE em_name = 'John Lane',
SET tel_num = '787-699-0025' WHERE em_name = 'Elena Johnson',
SET tel_num = '549-222-1657' WHERE em_name = 'Juan Díaz';

SELECT * FROM employees WHERE em_name LIKE '____e5';

SELECT * FROM employees WHERE id IN (6, 7, 9);

SELECT * FROM employees WHERE id NOT IN (7, 8);

SELECT * FROM employees WHERE (years_in_company > 5 OR salary > 4000) AND gender = 'F';

SELECT em_name FROM employees WHERE id IN (SELECT mentor_id FROM mentorships WHERE project = 'SQF Limited');

SELECT * FROM employees ORDER BY gender, em_name;

SELECT * FROM employees ORDER BY gender DESC, em_name;

SELECT CONCAT('Hello', 'world!');

SELECT SUBSTRING ('Programming', 2);

SELECT SUBSTRING ('Programming', 2, 6);

SELECT CURDATE();

SELECT COUNT (*) FROM employees;
SELECT COUNT (tel_num) FROM employees;
SELECT COUNT (gender) FROM employees;
SELECT COUNT (DISTINCT gender) FROM employees;

SELECT AVG (salary) FROM employees;
SELECT ROUND(AVG(salary), 2) FROM employees;