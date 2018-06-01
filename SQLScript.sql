use sdev;

create table Faculty(
	FacultyID int primary key,
	First_Name varchar(30),
	Last_Name varchar(30),
	Email varchar(60),
	Date_of_Birth varchar(10),
	Number_of_Courses_Taught_to_Date int
);

create table Courses(
	CourseID int primary key,
	Discipline_Name varchar(4),
	Course_Number varchar(4),
	Number_of_Credits varchar(4),
	Year_First_Offered varchar(4),
	Course_Title varchar(75)
);

create table FacultyCourses(
	FacultyCourseID int primary key,
	Faculty int references Faulty(FacultyID),
	Courses int references Courses(CourseID)
);

insert into Faculty
values (1, 'John', 'Doe', 'johndoe@email.com', '1/1/1980', 22);
insert into Faculty
values (2, 'Jane', 'Smith', 'janesmith@email.com', '1/2/1980', 5);
insert into Faculty
values (3, 'Jake', 'Ziller', 'jakeziller@email.com', '10/1/1980', 13);
insert into Faculty
values (4, 'Sally', 'Stevensen', 'sallystevesen@email.com', '1/1/1988', 18);
insert into Faculty
values (5, 'Ted', 'Douglas', 'teddouglas@email.com', '1/1/1986', 32);
insert into Faculty
values (6, 'Ann', 'Boelyn', 'annboelyn@email.com', '1/7/1980', 42);
insert into Faculty
values (7, 'Tim', 'Duncan', 'timduncan@email.com', '1/1/1980', 2);
insert into Faculty
values (8, 'Alice', 'Inwonderland', 'aliceinwonderland@email.com', '12/1/1970', 64);
insert into Faculty
values (9, 'Rick', 'Morty', 'rickymorty@email.com', '1/7/1977', 77);
insert into Faculty
values (10, 'Nancy', 'Drew', 'nancydrew@email.com', '4/1/1987', 45);


insert into Courses
values (1, 'SDEV', '300', '3', '2017', 'Building Secure Web Applications');
insert into Courses
values (2, 'CMIS', '355', '3', '2016', 'Software Applications Security');
insert into Courses
values (3, 'CMSC', '100', '3', '2018', 'Introduction to Programming');
insert into Courses
values (4, 'MATH', '300', '4', '2017', 'Calculus I');
insert into Courses
values (5, 'HIST', '360', '3', '2016', 'Europes Bloodiest Century');
insert into Courses
values (6, 'MATH', '400', '4', '2017', 'Calculus II');

insert into FacultyCourses
values (1, 1, 1);
insert into FacultyCourses
values (2, 2, 2);
insert into FacultyCourses
values (3, 3, 3);
insert into FacultyCourses
values (4, 4, 4);
insert into FacultyCourses
values (5, 5, 5);
insert into FacultyCourses
values (6, 6, 6);
insert into FacultyCourses
values (7, 7, 7);
insert into FacultyCourses
values (8, 8, 8);
insert into FacultyCourses
values (9, 9, 9);
insert into FacultyCourses
values (10, 10, 10);
insert into FacultyCourses
values (11, 11, 11);
insert into FacultyCourses
values (12, 12, 12);
insert into FacultyCourses
values (13, 13, 13);
insert into FacultyCourses
values (14, 14, 14);
insert into FacultyCourses
values (15, 15, 15);
insert into FacultyCourses
values (16, 16, 16);
insert into FacultyCourses
values (17, 17, 17);
insert into FacultyCourses
values (18, 18, 18);
insert into FacultyCourses
values (19, 19, 19);
insert into FacultyCourses
values (20, 20, 20);
insert into FacultyCourses
values (21, 21, 21);
insert into FacultyCourses
values (22, 22, 22);
insert into FacultyCourses
values (23, 23, 23);
insert into FacultyCourses
values (24, 24, 24);
insert into FacultyCourses
values (25, 25, 25);

update Courses set Number_of_Credits = '4';

update Faculty set Number_of_Courses_Taught_to_Date = 5
	where Number_of_Courses_Taught_to_Date > 4;

delete from Faculty
	where Last_Name like ('Z%');

delete from Courses
	where Year_First_Offered = '1999';

select * from Faculty
Order by Last_Name;

select * from Courses
Order by Course_Title;

select * from FacultyCourses;

select * from Faculty
where Number_of_Courses_Taught_to_Date = 0;

select * from Courses
where Year_First_Offered < 1984;

select FacultyID, Course_Title from 
FacultyCourses, Courses, Faculty 
where FacultyID =FacultyID 
and CourseID = CourseID; 
select FacultyID, Course_Title,Course_Number from 
FacultyCourses, Courses, Faculty 
where FacultyID =FacultyID
and CourseID = CourseID 
order by CourseID,FacultyID;