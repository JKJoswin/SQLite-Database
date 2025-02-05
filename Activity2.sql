create table salesman(
salesmanid text Primarykey,
name text,
city text,
comission real);

insert into salesman(salesmanid,name,city,comission) values("5001","Sherlock Holmes","New York",0.3);
insert into salesman(salesmanid,name,city,comission) values("5002","Watson","San Fransisco",0.1);
insert into salesman(salesmanid,name,city,comission) values("5003","Brekinridge","California",0.2);
insert into salesman(salesmanid,name,city,comission) values("5004","Windigate","Chicago",0.25);

select * from salesman;