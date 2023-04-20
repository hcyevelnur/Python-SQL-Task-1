create database Building;

create table Hospital(
id int NOT NULL UNIQUE,
name varchar(50) NOT NULL,
email varchar(50) NOT NULL,
age int NOT NULL,
is_doctor BOOLEAN DEFAULT TRUE
)


create table Library(
id int NOT NULL UNIQUE,
book_name varchar(100) NOT NULL,
book_author varchar(50),
book_language char(3) NOT NULL
)

create table Mall(
id int Not Null UNIQUE,
name VARCHAR(40) Not Null,
location text
)

insert into Hospital(id, name, email, age, is_doctor)
VALUES
(1, 'Elnur', 'salam1@gmail.com', 21, 1),
(2, 'Yusif', 'salam2@gmail.com', 22, 1),
(3, 'Seyran', 'salam3@gmail.com', 26, 1),
(4, 'Amin', 'salam45@gmail.com', 40, 1),
(5, 'Ulvi', 'salam66@gmail.com', 18, 1),
(6, 'Anar', 'salam65@gmail.com', 20, 1);


select * from Hospital WHERE is_doctor = true AND name LIKE 'A%';



insert into Library(id, book_name, book_author, book_language)
values
(1, 'Razer', 'text yoxdur', 'az'),
(2, 'Razer2', 'text yoxdur', 'az'),
(3, 'Razer3', 'text yoxdur', 'az'),
(4, 'Razer4', 'text yoxdur', 'rus'),
(5, 'Razer5', 'text yoxdur', 'tr'),
(6, 'Razer6', 'text yoxdur', 'az');


SELECT * FROM Library WHERE id IN (1, 3, 5);




select * from Hospital 
where age between 25 and 40;



insert into Mall(id, name, location)
Values
(1, 'Elnur', 'Arabistan'),
(2, 'Seyran', 'Turkiye'),
(3, 'Camil', 'Rusiya');


select * from Mall 
order by name desc;


select * from Mall 
where location like '%ar%';



select * from Library 
where book_language like '_e%' or book_language like '%a';


TRUNCATE table Library;


drop table Hospital


drop database Building
