create table nobel_prize_winners(
year integer,
subject text,
name text,
country text,
category text);

insert into nobel_prize_winners(year, subject, name, country, category) values(1901,"Social Work","Abraham Lincoln","USA","President");
insert into nobel_prize_winners(year, subject, name, country, category) values(1942,"Language","O.Henry","Sweden","Author");
insert into nobel_prize_winners(year, subject, name, country, category) values(1992,"Social Work","Mother Teresa","India","Saint");
insert into nobel_prize_winners(year, subject, name, country, category) values(1947,"Chemistry","Ernest Rutherford","USA","Scientist");
insert into nobel_prize_winners(year, subject, name, country, category) values(1947,"Literature","Rabindranath Tagore","India","Poet");

select * from nobel_prize_winners where subject not like "S%" order by year DESC, name ASC;