create table NYC_Food_Temple(
name text Primarykey,
neighbourhood text,
review text,
cuisine text,
price real,
grade text);

insert into NYC_Food_Temple(name, neighbourhood, review, cuisine, price, grade) values("Golden Prawn","New York","4.5","Thai",10.00,"C");
insert into NYC_Food_Temple(name, neighbourhood, review, cuisine, price, grade) values("Japanese Chicken","New York","4.0","Japanese",15.00,"B");
insert into NYC_Food_Temple(name, neighbourhood, review, cuisine, price, grade) values("Lamb Peperoni","New York","5","American",20.00,"A");
insert into NYC_Food_Temple(name, neighbourhood, review, cuisine, price, grade) values("Peri Peri Momos","New York","4.2","Chinese",15.00,"C");
insert into NYC_Food_Temple(name, neighbourhood, review, cuisine, price, grade) values("Ramen","New York","4.7","Korean",12.50,"B");

select distinct cuisine from NYC_Food_Temple;

select distinct neighbourhood from NYC_Food_Temple;

select * from NYC_Food_Temple;

select * from NYC_Food_Temple where cuisine="Chinese";

select * from NYC_Food_Temple where review="5";

select * from NYC_Food_Temple where cuisine="Thai" and price > 9.99;

select * from NYC_Food_Temple where name like "%chicken%";

select * from NYC_Food_Temple where neighbourhood in ("New York", "New Jersey", "California");

select * from NYC_Food_Temple order by review DESC limit 4;