Create Database School

Use School


Create Table Teachers
(TeacherId int Primary Key identity(1,1),
FirstName nvarchar(50),
LastName nvarchar(50),
Gender nvarchar(10),
Email nvarchar(100),
PhoneNumber nvarchar(15));

Create Table Students
(StudentId int Primary Key Identity(1,1),
FirstName nvarchar(50),
LastName nvarchar(50),
Gender nvarchar(10),
Email nvarchar(100),
PhoneNumber nvarchar(15),
TeacherId int References Teachers(TeacherId));

Create Table Courses
(CourseId int Primary key Identity(1,1),
CourseName nvarchar(100),
CourseDescription nvarchar(max),
TeacherId int References Teachers(TeacherId));

Insert Into Teachers (FirstName, LastName, Gender, Email, PhoneNumber)
Values
('Rajesh', 'Kumar', 'Male', 'rajesh.kumar@email.com', '1234567890'),
('Priya', 'Sharma', 'Female', 'priya.sharma@email.com', '9876543210'),
('Amit', 'Patel', 'Male', 'amit.patel@email.com', '5555555555'),
('Sunita', 'Verma', 'Female', 'sunita.verma@email.com', '1112223333'),
('Anil', 'Singh', 'Male', 'anil.singh@email.com', '4444444444');

Insert Into Students (FirstName, LastName, Gender, Email, PhoneNumber, TeacherId)
Values
('Aarav', 'Gupta', 'Male', 'aarav.gupta@email.com', '1234567890', 1),
('Kavya', 'Sharma', 'Female', 'kavya.sharma@email.com', '9876543210', 2),
('Aditya', 'Patel', 'Male', 'aditya.patel@email.com', '5555555555', 3),
('Diya', 'Singh', 'Female', 'diya.singh@email.com', '1112223333', 4),
('Yash', 'Kapoor', 'Male', 'yash.kapoor@email.com', '4444444444', 5),
('Riya', 'Verma', 'Female', 'riya.verma@email.com', '7777778777', 4),
('Arjun', 'Khanna', 'Male', 'arjun.khanna@email.com', '8888888888', 2),
('Nisha', 'Jain', 'Female', 'nisha.jain@email.com', '9999999999', 1),
('Vikas', 'Malhotra', 'Male', 'vikas.malhotra@email.com', '6666666666', 3),
('Neha', 'Chawla', 'Female', 'neha.chawla@email.com', '3333333333', 5);

Insert Into Courses (CourseName, CourseDescription, TeacherId)
Values
('Mechanical Engineering Thermodynamics', 'Study of energy transfer and transformation in mechanical systems.', 1),
('Civil Engineering Structures', 'Analysis and design of civil engineering structures like bridges and buildings.', 1),
('Electrical Circuit Analysis', 'Principles of electrical circuits and their analysis techniques.', 3),
('Computer Science Algorithms', 'Algorithms and data structures for computer science.', 4),
('Chemical Engineering Processes', 'Chemical engineering processes and unit operations.', 5),
('Aerospace Engineering Principles', 'Fundamental principles of aerospace engineering.', 2),
('Environmental Engineering', 'Environmental issues and solutions in engineering.', 5),
('Biomedical Engineering Fundamentals', 'Introduction to biomedical engineering and medical devices.', 3),
('Materials Science and Engineering', 'Properties and applications of engineering materials.', 4),
('Robotics and Automation', 'Study of robotics, automation, and artificial intelligence in engineering.', 2);


Select * From Courses;
Select * From Teachers;
Select * From Students;