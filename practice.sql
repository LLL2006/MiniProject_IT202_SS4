drop database practice;
create database practice;
use practice;

create table Student(
	student_id int primary key,
    full_name varchar(25) not null,
    email varchar(25) not null unique,
    phone char(10) not null 
);

create table Course (
	course_id int primary key,
    course_name varchar(25) not null,
    number_of_credits int not null check(number_of_credits > 0)
);

create table Enrollment(
	student_id int,
    course_id int,
	Grade decimal(4,2) default 0,
    
    primary key(student_id, course_id),
    
    foreign key(student_id) references student(student_id) on delete cascade,
    foreign key(course_id) references course(course_id) on delete cascade
);

insert into student
values(1, "A", "A@gmail.com", "0123456789"),
(2, "B", "B@gmail.com", "0123456788"),
(3, "C", "C@gmail.com", "0123456787"),
(4, "D", "D@gmail.com", "0123456786"),
(5, "E", "E@gmail.com", "0123456785");

insert into course
values(101, "COA", 3),
(2, "COB", 1),
(3, "COC", 3),
(4, "COD", 4),
(5, "COE", 5);

insert into enrollment
values(1,101,8),
(3,2,8),
(2,3,7),
(4,4,6),
(5,5,5);

update enrollment 
set grade = 9
where student_id = 2 and course_id = 3;

select full_name `Họ tên`, email `Email`, phone `Số điện thoại` from student;

delete from course where course_id = "101";




