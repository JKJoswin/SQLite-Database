create table student(
rollno text Primarykey,
name text,
address text,
city text,
phoneno text,
age integer);

insert into student(rollno,name,address,city,phoneno,age) values("16","Joswin Jayakumar","F2, Thulasi Nivas, Padi","Chennai","9840508247",18);
insert into student(rollno,name,address,city,phoneno,age) values("17","K Aran","42, Besant Nagar","Coimbatore","9432095712",19);
insert into student(rollno,name,address,city,phoneno,age) values("18","K Lakshay","23, Perambur","Chengalpettu","9345432345",18);
insert into student(rollno,name,address,city,phoneno,age) values("20","Kyansh Bhayani","10, Royapettah","Kanchipuram","9644362001",21);

select * from student where age=18 and city="Chennai";

select * from student where name="Joswin Jayakumar" and age=18;

select * from student where name="K Aran" or name="Kyansh Bhayani";

select * from student where name="K Lakshay" and age>20;

select * from student where age=18 and (name="K Lakshay" or name="Kyansh Bhayani");