create database Naji;
use naji;

drop table Rating;
drop table Movie_cast;
drop table Movies;
drop table Director;

select * from movies; where mov_year > 2018;
select mov_id, avg(rev_stars) from rating group by(mov_id);

create table Actor(
Act_id int primary key,
Act_name varchar(20),
Act_gender varchar(10)
);
create table Director(
Dir_id int primary key,
Dir_name varchar(20),
Dir_phone varchar(20) unique
);
create table Movies(
Mov_id int primary key,
Mov_title varchar(50) unique,
Mov_year int,
Mov_lang varchar(20),
Dir_id int,
CONSTRAINT 
foreign key (Dir_id) references Director(Dir_id)  
);
create table Movie_Cast(
Act_id int,
Mov_id int,
Role varchar(20),
CONSTRAINT
primary key (Act_id,Mov_id),
foreign key (Act_id) references Actor(Act_id),
foreign key (Mov_id) references Movies(Mov_id)
);
create table Rating(
Mov_id int,
Rev_Stars decimal(2,1) check (rev_stars >= 0 AND rev_stars <= 5),
CONSTRAINT
foreign key (Mov_id) references Movies(Mov_id)
);

INSERT INTO ACTOR (Act_id, Act_Name, Act_Gender)
VALUES
    (1, 'Tom Hanks', 'Male'),
    (2, 'Meryl Streep', 'Female'),
    (3, 'Leonardo DiCaprio', 'Male'),
    (4, 'Jennifer Lawrence', 'Female'),
    (5, 'Brad Pitt', 'Male'),
    (6, 'Scarlett Johansson', 'Female'),
    (7, 'Denzel Washington', 'Male'),
    (8, 'Cate Blanchett', 'Female'),
    (9, 'Johnny Depp', 'Male'),
    (10, 'Natalie Portman', 'Female'),
    (11, 'Robert Downey Jr.', 'Male'),
    (12, 'Emma Stone', 'Female'),
    (13, 'Matt Damon', 'Male'),
    (14, 'Anne Hathaway', 'Female'),
    (15, 'George Clooney', 'Male'),
    (16, 'Charlize Theron', 'Female'),
    (17, 'Will Smith', 'Male'),
    (18, 'Julia Roberts', 'Female'),
    (19, 'Ryan Gosling', 'Male'),
    (20, 'Nicole Kidman', 'Female'),
    (21, 'Mark Ruffalo', 'Male'),
    (22, 'Angelina Jolie', 'Female'),
    (23, 'Chris Hemsworth', 'Male'),
    (24, 'Mila Kunis', 'Female'),
    (25, 'Tom Cruise', 'Male'),
    (26, 'Jessica Chastain', 'Female'),
    (27, 'Joaquin Phoenix', 'Male'),
    (28, 'Amy Adams', 'Female'),
    (29, 'Christian Bale', 'Male'),
    (30, 'Emma Watson', 'Female');
INSERT INTO DIRECTOR (Dir_id, Dir_Name, Dir_Phone)
VALUES
    (1, 'Steven Spielberg', '123-456-7890'),
    (2, 'Martin Scorsese', '987-654-3210'),
    (3, 'Christopher Nolan', '555-123-4567'),
    (4, 'Quentin Tarantino', '888-999-0000'),
    (5, 'James Cameron', '111-222-4444'),
    (6, 'Peter Jackson', '444-555-7777'),
    (7, 'Coen Brothers', '777-888-9999'),
    (8, 'Tim Burton', '333-222-1111'),
    (9, 'David Fincher', '666-777-9999'),
    (10, 'Spike Lee', '999-888-7777'),
    (11, 'Ridley Scott', '222-333-5555'),
    (12, 'Greta Gerwig', '555-666-7777'),
    (13, 'Wes Anderson', '111-555-9999'),
    (14, 'Denis Villeneuve', '888-222-5555'),
    (15, 'Alfred Hitchcock', '333-444-5555'),
    (16, 'Stanley Kubrick', '777-999-1111'),
    (17, 'Francis Ford Coppola', '444-555-8888'),
    (18, 'Hayao Miyazaki', '222-333-4444'),
    (19, 'Clint Eastwood', '666-777-8888'),
    (20, 'Ang Lee', '999-111-2222'),
    (21, 'Bong Joon-ho', '111-333-5555'),
    (22, 'Pedro Almodóvar', '555-777-9999'),
    (23, 'Darren Aronofsky', '888-111-4444'),
    (24, 'Akira Kurosawa', '333-666-9999'),
    (25, 'Alejandro González', '777-444-2222'),
    (26, 'Steven Soderbergh', '222-555-8888'),
    (27, 'Lars von Trier', '666-999-2222'),
    (28, 'Hitchcock', '999-666-3333'),
    (29, 'Park Chan-wook', '111-222-3333'),
    (30, 'Gaspar Noé', '444-555-6666');
INSERT INTO MOVIES (Mov_id, Mov_Title, Mov_Year, Mov_Lang, Dir_id)
VALUES
    (1, 'The Shawshank Redemption', 1994, 'English', 1),
    (2, 'The Godfather', 1972, 'English', 2),
    (3, 'Pulp Fiction', 1994, 'English', 4),
    (4, 'The Dark Knight', 2008, 'English', 3),
    (5, 'Fight Club', 1999, 'English', 5),
    (6, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'English', 6),
    (7, 'No Country for Old Men', 2007, 'English', 7),
    (8, 'Edward Scissorhands', 1990, 'English', 8),
    (9, 'Se7en', 1995, 'English', 9),
    (10, 'Do the Right Thing', 1989, 'English', 10),
    (11, 'Blade Runner', 2020, 'English', 11),
    (12, 'Little Women', 2019, 'English', 12),
    (13, 'The Grand Budapest Hotel', 2014, 'English', 13),
    (14, 'Arrival', 2016, 'English', 14),
    (15, 'Psycho', 1960, 'English', 15),
    (16, 'A Clockwork Orange', 1971, 'English', 16),
    (17, 'Apocalypse Now', 1979, 'English', 17),
    (18, 'Spirited Away', 2001, 'Japanese', 18),
    (19, 'Million Dollar Baby', 2004, 'English', 19),
    (20, 'Life of Pi', 2012, 'English', 20),
    (21, 'Parasite', 2019, 'Korean', 21),
    (22, 'Talk to Her', 2002, 'Spanish', 22),
    (23, 'Requiem for a Dream', 2000, 'English', 23),
    (24, 'Seven Samurai', 1954, 'Japanese', 24),
    (25, 'Birdman', 2014, 'English', 25),
    (26, 'Oceans Eleven', 2001, 'English', 26),
    (27, 'Melancholia', 2011, 'English', 27),
    (28, 'Transformers', 2007, 'English', 28),
    (29, 'Oldboy', 2003, 'Korean', 29),
    (30, 'Irreversible', 2002, 'French', 30);
INSERT INTO MOVIE_CAST (Act_id, Mov_id, Role)
VALUES
    (1, 1, 'Andy Dufresne'),
    (2, 1, 'Ellis Boyd Redding'),
    (3, 2, 'Vito Corleone'),
    (4, 2, 'Michael Corleone'),
    (5, 3, 'Vincent Vega'),
    (6, 3, 'Jules Winnfield'),
    (7, 4, 'The Joker'),
    (8, 4, 'Batman'),
    (9, 5, 'Tyler Durden'),
    (10, 5, 'Brother'),
    (11, 6, 'Frodo Baggins'),
    (12, 6, 'Gandalf'),
    (13, 7, 'Anton Chigurh'),
    (14, 7, 'Llewelyn Moss'),
    (15, 8, 'Edward Scissorhands'),
    (16, 8, 'Kim Boggs'),
    (17, 9, 'Detective Mills'),
    (18, 9, 'Detective Somerset'),
    (19, 10, 'Brother'),
    (20, 10, 'Salvatore Fragione'),
    (21, 11, 'Rick Deckard'),
    (22, 11, 'Roy Batty'),
    (23, 12, 'Jo March'),
    (24, 12, 'Theodore Laurence'),
    (25, 13, 'M. Gustave'),
    (26, 13, 'Zero Moustafa'),
    (27, 14, 'Louise Banks'),
    (28, 14, 'Ian Donnelly'),
    (29, 15, 'Norman Bates'),
    (30, 15, 'Marion Crane');
INSERT INTO RATING (Mov_id, Rev_Stars)
VALUES
    (1, 2.9),	
    (1, 3.7),
    (1, 1.8),
    (4, 4.0),
    (4, 2.8),
    (6, 3.8),
    (8, 4.1),
    (8, 1.9),
    (9, 3.6),
    (10, 2.8),
    (11, 4.1),
    (12, 2.8),
    (12, 3.1),
    (12, 4.1),
    (12, 4.5),
    (16, 1.3),
    (17, 3.4),
    (18, 2.6),
    (19, 4.1),
    (19, 1.9),
    (19, 2.6),
    (22, 4.9),
    (23, 1.3),
    (24, 3.6),
    (25, 2.7),
    (25, 4.7),
    (25, 4.1),
    (25, 3.6),
    (30, 1.4),
    (30, 2.3);



select m.mov_title from movies m
join director d on (m.dir_id = d.dir_id)
where d.dir_name = 'Hitchcock';

select m.mov_title, a.act_name, d.dir_name from movies m,director d, movie_cast mc, actor a
where (m.dir_id = d.dir_id and m.mov_id = mc.mov_id and mc.act_id = a.act_id);
 
 select count(act_id) as total from movie_cast
 where role = 'Brother';

select m.mov_title from movies m
join movie_cast mc on (m.mov_id = mc.mov_id)
group by mc.mov_id
having count(mc.act_id) > 1;

select a.act_name from actor a
join movie_cast mc on (a.act_id = mc.act_id)
join movies m on (mc.mov_id = m.mov_id)
where m.mov_year < 2010 or m.mov_year >= 2020;

select m.mov_title from movies m
join director d on (m.dir_id = d.dir_id)
join movie_cast mc on (mc.mov_id = m.mov_id)
join actor a on (mc.act_id = a.act_id)
where a.act_name = d.dir_name and mc.act_id = d.dir_id;

select d.dir_name from director d
join movies m on (d.dir_id = m.dir_id)
where m.mov_year between 2010 and 2022
group by d.dir_id 
having count(m.mov_id) > 5;

select m.mov_title, avg(r.rev_stars) as score, max(r.rev_stars) as maxScore from movies m, rating r
where (m.mov_id = r.mov_id)
group by r.mov_id
order by mov_title;

select count(m.mov_id) from movies m
join director d on (m.dir_id = d.dir_id)
where d.dir_name = 'Steven Spielberg';

alter table movie_cast
add column lead_role bool;
alter table movies
add column genre varchar(20);

create table temp(
mov_id int primary key auto_increment,
rol bool,
gen varchar(20)
)auto_increment = 1;
insert into temp (rol,gen)
values
  (False,'Action'),
  (True,'Adventure'),
  (False,'Comedy'),
  (True,'Drama'),
  (False,'Fantasy'),
  (True,'Horror'),
  (False,'Mystery'),
  (True,'History'),
  (False,'Sci-Fi'),
  (True,'Thriller'),
  (False,'Animation'),
  (True,'Crime'),
  (False,'Family'),
  (True,'Action'),
  (False,'Sport'),
  (True,'War'),
  (False,'Kids'),
  (True,'Biography'),
  (False,'Documentary'),
  (True,'Animation'),
  (False,'Action'),
  (True,'Supernatural'),
  (False,'Kids'),
  (True,'Political'),
  (False,'Kids'),
  (True,'Psychological'),
  (False,'Animated'),
  (True,'Holiday'),
  (False,'Action'),
  (True,'Comedy');

update movie_cast mc
join temp t on (mc.act_id = t.mov_id)
set mc.lead_role = t.rol;
update movies m
join temp t on (m.mov_id = t.mov_id)
set m.genre = t.gen;

drop table temp;

select mov_title from movies
where genre = 'Kids';

select m.mov_title from movies m
join rating r on (m.mov_id = r.mov_id)
where m.mov_year > 2018 and m.genre = 'Animation'
group by m.mov_id
having avg(r.rev_stars) >= 3.5;

select mov_title as Recommended from movies
where genre = 'Action';

