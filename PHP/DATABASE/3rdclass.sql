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
    
INSERT INTO employees (em_name, gender, tel_num, salary, years_in_company) VALUES
('James Lee', 'M', '334-456-7789', 2340, 2),
('John Lane', 'M', '285-704-8553', 1449, 1),
('Walter Smith', 'M', '337-554-1290', 3590, 5),
('Elena Johnson', 'F', '787-699-0025', 2500, 4),
('Juan Díaz', 'M', '549-222-1657', 2219, 3),
('Mary White', 'F', '743-213-6775', 3500, 5),
('James Wolf', 'M', '298-886-1134', 7000, 11),
('Victor Mendes', 'M', '997-501-9722', 4300, 8),
('Jane Brown', 'F', '400-289-2205', 5200, 6),
('Arthur Garcia', 'M', '312-465-7798', 2780, 3),
('Doug Miller', 'M', '478-997-8423', 1800, 1),
('Michael Green', 'M', '114-568-4334', 2330, 3);