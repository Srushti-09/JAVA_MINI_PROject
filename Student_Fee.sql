-- 1. Create Database
CREATE DATABASE student_fee_db;
USE student_fee_db;

-- 2. Create Tables
CREATE TABLE students (
    roll_number INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INT,
    branch VARCHAR(50),
    gender VARCHAR(10),
    dob DATE,
    caste VARCHAR(50)
);

CREATE TABLE fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    roll_number INT,
    total_fee DECIMAL(10,2),
    fee_paid DECIMAL(10,2),
    fee_pending DECIMAL(10,2),
    FOREIGN KEY (roll_number) REFERENCES students(roll_number)
);

CREATE TABLE caste_fee (
    caste VARCHAR(50) PRIMARY KEY,
    total_fee DECIMAL(10,2)
);

-- 3. Insert Caste Fee Data
INSERT INTO caste_fee VALUES
('GEN', 100000),
('OBC', 80000),
('SC', 50000),
('ST', 40000);

-- 4. Insert 20 Students
INSERT INTO students (roll_number, name, year, branch, gender, dob, caste) VALUES
(101, 'Srushti Murade', 2, 'CSE', 'Female', '2006-09-09', 'OBC'),
(102, 'Aarav Patel', 1, 'CSE', 'Male', '2007-05-11', 'GEN'),
(103, 'Priya Sharma', 3, 'IT', 'Female', '2005-12-18', 'SC'),
(104, 'Rohan Mehta', 4, 'ECE', 'Male', '2004-08-22', 'OBC'),
(105, 'Simran Kaur', 2, 'EEE', 'Female', '2006-07-13', 'GEN'),
(106, 'Arjun Nair', 3, 'MECH', 'Male', '2005-01-29', 'ST'),
(107, 'Ananya Desai', 1, 'CSE', 'Female', '2007-03-17', 'OBC'),
(108, 'Karan Joshi', 2, 'IT', 'Male', '2006-09-25', 'GEN'),
(109, 'Neha Singh', 3, 'CIVIL', 'Female', '2005-04-03', 'SC'),
(110, 'Vikram Rao', 4, 'CSE', 'Male', '2004-06-27', 'GEN'),
(111, 'Isha Verma', 2, 'ECE', 'Female', '2006-02-10', 'OBC'),
(112, 'Rahul Gupta', 3, 'EEE', 'Male', '2005-11-15', 'GEN'),
(113, 'Tanya Bansal', 1, 'CSE', 'Female', '2007-09-06', 'ST'),
(114, 'Manav Yadav', 4, 'IT', 'Male', '2004-10-12', 'OBC'),
(115, 'Diya Kapoor', 2, 'MECH', 'Female', '2006-08-04', 'GEN'),
(116, 'Sahil Khan', 3, 'CIVIL', 'Male', '2005-05-22', 'SC'),
(117, 'Aditi Jain', 1, 'CSE', 'Female', '2007-01-31', 'GEN'),
(118, 'Ritesh Pawar', 2, 'ECE', 'Male', '2006-04-19', 'OBC'),
(119, 'Meera Pillai', 3, 'IT', 'Female', '2005-07-27', 'ST'),
(120, 'Dev Malhotra', 4, 'EEE', 'Male', '2004-02-08', 'GEN');

-- 5. Insert Fee Records
INSERT INTO fees (roll_number, total_fee, fee_paid, fee_pending) VALUES
(101, 80000, 30000, 50000),
(102, 100000, 50000, 50000),
(103, 50000, 20000, 30000),
(104, 80000, 40000, 40000),
(105, 100000, 60000, 40000),
(106, 40000, 20000, 20000),
(107, 80000, 25000, 55000),
(108, 100000, 70000, 30000),
(109, 50000, 30000, 20000),
(110, 100000, 80000, 20000),
(111, 80000, 40000, 40000),
(112, 100000, 50000, 50000),
(113, 40000, 15000, 25000),
(114, 80000, 60000, 20000),
(115, 100000, 30000, 70000),
(116, 50000, 20000, 30000),
(117, 100000, 50000, 50000),
(118, 80000, 45000, 35000),
(119, 40000, 10000, 30000),
(120, 100000, 75000, 25000);
