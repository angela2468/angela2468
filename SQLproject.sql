
--table defiinition
create table Customer (
id numeric primary key,
Name varchar(255),
address varchar(255),
);


--inserting data into table
insert into Customer values(1, 'Angela','London');
insert into Customer values(2, 'Cohen', 'Manchester');
insert into Customer values(3, 'Devin', 'York');
insert into Customer values(4, 'Dorris', 'Bristol');
insert into Customer values(5, 'Iyana', 'London');
insert into Customer values(6, 'Reuben', 'London');
insert into Customer values(7, 'Jason', 'Leeds');
insert into Customer values (8, 'Naomi', 'Liverpool');


drop table Customer

--extracting data
select * from Customer
select name from Customer

alter table Customer
insert column address;
drop table Famous_Composers

create table Famous_Composers (
id numeric primary key,
name varchar(255),
nationality varchar(255),
year_of_birth varchar(255),
);

insert into Famous_Composers values (1, 'Chopin', 'Polish','1810');
insert into Famous_Composers values (2, 'Beethoven', 'German','1770');
insert into Famous_Composers values (3, 'Liszt', 'Austrian','1811');
insert into Famous_Composers values (4, 'Mozart', 'Austrian','1756');
insert into Famous_Composers values (5, 'Rachmaninoff', 'Russian-American', '1873');
insert into Famous_Composers values (6, 'Debussy', 'Franch', '1862');
insert into Famous_Composers values (7, 'Brahms', 'German', '1833');
insert into Famous_Composers values (8, 'Williams', 'American', '1932');
insert into Famous_Composers values (9, 'Joplin', 'African-American', '1868');
insert into Famous_Composers values (10, 'Massenet', 'French', '1842');



select * from Famous_Composers
join Customer on Famous_Composers.customer_id = Customer.id

drop table Pieces

create table Pieces (
id numeric primary key,
composer_id numeric,
customer_id numeric,
name_of_piece varchar(255),
date_composed varchar(255),
instrument varchar(255),
FOREIGN KEY (composer_id) REFERENCES Famous_Composers(id),
FOREIGN KEY (customer_id) REFERENCES Customer(id),
)

insert into Pieces values (001, 1,1, 'Fantaisie-Impromptu', '1834','piano')
insert into Pieces values (002, 2,1, 'Sonata Pathetique', '1798','piano')
insert into Pieces values (003, 3,4, 'Hungarian Rhapsody', '1885','piano')
insert into Pieces values (004, 4,1, 'Piano Sonata No. 1 in C major', '1774','piano')
insert into Pieces values (005, 5,5, 'Piano Concerto No.2 op.18', '1901','piano')
insert into Pieces values (006, 6,1, 'Arabesque', '1891','piano')
insert into Pieces values (007, 7,1, 'Intermezzo in A major', '1893','piano')
insert into Pieces values (008, 8,7, 'Schindlers List Theme', '1993','violin')
insert into Pieces values (010, 1,1, 'Nocturne in C minor, Op. 48, No. 1', '1841','piano')
insert into Pieces values (011, 1,2, '(Raindrop) Prelude, Op. 28, No. 15', '1839','piano')
insert into Pieces values (012, 1,1, '(Le Petit Chien) Valse Op.64 No.1', '1851','piano')
insert into Pieces values (013, 2,3, '(Fur Elise) Bagatelle in A Minor', '1810','piano')
insert into Pieces values (014, 2,1, 'Piano Sonata No. 27', '1814','piano')
insert into Pieces values (015, 3,1, 'Liebestraum', '1850','piano')
insert into Pieces values (015, 3,4, 'Liebestraum', '1850','piano')
insert into Pieces values (016, 10,6, 'The Entertainer', '1910','piano')
insert into Pieces values (017, 10,7, 'Meditation', '1893','violin')


select * from Pieces
join Famous_Composers on Pieces.composer_id = Famous_Composers.id
join Customer on Pieces.customer_id = Customer.id
