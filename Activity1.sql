create table supplier(snumber Integer Primarykey,
sname varchar(20),
status varchar(20),
city varchar(20));

insert into supplier(snumber, sname,status,city) values(100,"Timothee Chalame","Good","D.C.Washington");
insert into supplier(snumber, sname,status,city) values(101,"James Bond","Bad","New York");
insert into supplier(snumber, sname,status,city) values(102,"Dwayne Johnson","Average","Chicago");
insert into supplier(snumber, sname,status,city) values(103,"Tom Cruise","Excellent","Ohio");
insert into supplier(snumber, sname,status,city) values(104,"Tom Howland","Best","California");

select * from supplier;