create database Student_Management_System;

use Student_Management_System;

create table student(
     std_id int auto_increment primary key,
     std_name varchar(50),
     std_gender enum("F","M"),
     std_contact varchar(30),
     std_email varchar(50)

);

create table student_subject(
        sub_id int auto_increment primary key,
        sub_name varchar(50)
);

create table student_marks(
          mark_id int auto_increment primary key,
          std_id int ,
          sub_id int,
          mark int ,
          foreign key (std_id) references student(std_id),
          foreign key (sub_id) references student_subject(sub_id)
);


DELIMITER $$
create procedure add_student(
	 std_name varchar(50),
     std_gender enum("F","M"),
     std_contact varchar(30),
     std_email varchar(50)
)
begin
insert into student(std_name,std_gender,std_contact,std_email) values(std_name,std_gender,std_contact,std_email);
end $$
DELIMITER ;

call add_student("Kina","F","7418529630","Kina@gmail.com");


DELIMITER $$
create procedure add_student_Subject(
	 sub_name varchar(50)
)
begin
insert into student_subject(sub_name) values(sub_name);
end $$
DELIMITER ;

call add_student_Subject("Science");

insert into student_marks(std_id,sub_id,mark) values(1,1,70),(1,2,87),(1,3,86),(1,4,83),(1,5,90);

insert into student_marks(std_id,sub_id,mark) values(2,1,71),(2,2,65),(2,3,82),(2,4,93),(2,5,30);

insert into student_marks(std_id,sub_id,mark) values(3,1,73),(3,2,68),(3,3,66),(3,4,53),(3,5,40);

insert into student_marks(std_id,sub_id,mark) values(4,1,76),(4,2,78),(4,3,76),(4,4,73),(4,5,60);

insert into student_marks(std_id,sub_id,mark) values(5,1,60),(5,2,83),(5,3,76),(5,4,23),(5,5,80);


select m.mark_id,m.mark ,s.sub_name,std.std_name from student_marks m inner join student_subject s on m.sub_id = s.sub_id 
join student std on m.std_id = std.std_id
order by m.mark_id; 

select s.std_id ,s.std_name , sum(m.mark) as sum , avg(m.mark) as avgrage , count(s.std_name) as total from student s inner join student_marks m on s.std_id = m.std_id group by s.std_id , s.std_name order by sum desc limit 3;

select std_name , count(std_name) as total_Student from student group by std_name;

select  count(std_name) as total_student from student;



