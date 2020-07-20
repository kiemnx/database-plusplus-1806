CREATE SCHEMA `manage_student` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `manage_student`.`students` (
  `StudentID` VARCHAR(10) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `Sex` VARCHAR(10) NOT NULL,
  `DateOfBirth` VARCHAR(45) NOT NULL,
  `PlaceOfBirth` VARCHAR(45) NOT NULL,
  `DeptID` VARCHAR(5) NOT NULL,
  `Scholarship` VARCHAR(45) NULL,
  `AverageScore` FLOAT(2) NULL,
  PRIMARY KEY (`StudentID`));
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S001', 'Lê', 'Kim Lan', 'F', '23/02/1990 ', 'Hà Nội', 'IS', '130000');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S002', 'Trần', 'Minh Chánh', 'M', '24/12/1992', 'Bình Định', 'NC', '150000');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S003', 'Lê', 'An Tuyết', 'F ', '21/02/1991', 'Hải phòng', 'IS', '170000');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S004', 'Trần ', 'Anh Tuấn', 'M ', '20/12/1993 ', 'TpHCM', 'NC', '80000');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S005', 'Trần', 'Thị Mai', 'F', '12/08/1991', 'TpHCM', 'SE', '0');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S006', 'Lê', 'Thị Thu Thủy', 'F', '02/01/1991', 'An Giang', 'IS', '0');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S007', 'Nguyễn', 'Kim Thư', 'F', '02/02/1990', 'Hà Nội', 'SE', '180000');
INSERT INTO `manage_student`.`students` (`StudentID`, `LastName`, `FirstName`, `Sex`, `DateOfBirth`, `PlaceOfBirth`, `DeptID`, `Scholarship`) VALUES ('S008', 'Lê', 'Văn Long', 'M', '08/12/1992', 'TpHCM', 'IS', '190000');

CREATE TABLE `manage_student`.`courses` (
  `CourseID` VARCHAR(10) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Credits` INT NOT NULL,
  PRIMARY KEY (`CourseID`));

 INSERT INTO `manage_student`.`courses` (`CourseID`,`Name`,`Credits`) VALUES ('DS01', 'Database Systems',3),
 ('AI01' ,'Artificial Intelligence',3),
 ('CN01' ,'Computer Network',3),
 ('CG01', 'Computer Graphics',4),
 ('DSA1','Data Structures and Algorithms',4);

 CREATE TABLE `manage_student`.`results` (
  `StudentID` VARCHAR(10) NOT NULL,
  `CourseID` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Semester` INT NOT NULL,
  `Mark` DOUBLE NOT NULL,
  `Grade` VARCHAR(20));

INSERT INTO `manage_student`.`results`(`StudentID`,`CourseID`,`Year`,`Semester`,`Mark`)
VALUES ('S001','DS01',2017,1,3),
('S001','DS01',2017,2,6),
('S001','AI01',2017,1 ,4.5),
('S001','AI01' ,2017,2,6),
('S001','CN01' ,2017,3,5),
('S002','DS01',2016,1,4.5),
('S002','DS01',2017,1,7),
('S002','CN01',2016,3,10),
('S002','DSA1',2016,3,9),
('S003','DS01',2017,1,2),
('S003','DS01',2017,3,5),
('S003','CN01',2017,2,2.5),
('S003','CN01',2017,3,4),
('S004','DS01',2017,3,4.5),
('S004','DSA1',2018,1,10),
('S005','DS01',2017,2,7),
('S005','CN01',2017,2,2.5),
('S005','CN01',2018,1,5),
('S006','AI01',2018,1,6),
('S006','CN01',2018,2,10);

CREATE TABLE `manage_student`.`departments` (
  `DeptID` VARCHAR(20) NOT NULL,
  `Name` VARCHAR(100) NOT NULL,
  `NoOfStudents` VARCHAR(45) NULL,
  PRIMARY KEY (`DeptID`));

INSERT INTO `manage_student`.`departments`(`DeptID`,`Name`)
VALUE('IS' ,'Information Systems'),
('NC', 'Network and Communication'),
('SE', 'Software Engineering'),
('CE','Computer Engineering' );


