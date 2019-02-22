
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

name_of_piece varchar(255),
date_composed varchar(255),
instrument varchar(255),
price float,
delivery varchar(255),
FOREIGN KEY (composer_id) REFERENCES Famous_Composers(id),
)

insert into Pieces values (001, 1, 'Fantaisie-Impromptu', '1834','piano',4.67, 'True')
insert into Pieces values (002, 2, 'Sonata Pathetique', '1798','piano', 3.64, 'True')
insert into Pieces values (003, 3, 'Hungarian Rhapsody', '1885','piano',2.19,'False')
insert into Pieces values (004, 4, 'Piano Sonata No. 1 in C major', '1774','piano',3.20,'False')
insert into Pieces values (005, 5, 'Piano Concerto No.2 op.18', '1901','piano',3.50,'True')
insert into Pieces values (006, 6, 'Arabesque', '1891','piano',2.80, 'False')
insert into Pieces values (007, 7, 'Intermezzo in A major', '1893','piano',4.00,'True')
insert into Pieces values (008, 8, 'Schindlers List Theme', '1993','violin',3.01,'False')
insert into Pieces values (010, 1, 'Nocturne in C minor, Op. 48, No. 1', '1841','piano',5.44,'False')
insert into Pieces values (011, 1, '(Raindrop) Prelude, Op. 28, No. 15', '1839','piano',5.80,'True')
insert into Pieces values (012, 1, '(Le Petit Chien) Valse Op.64 No.1', '1851','piano',2.90,'True')
insert into Pieces values (013, 2, '(Fur Elise) Bagatelle in A Minor', '1810','piano',3.59,'True')
insert into Pieces values (014, 2, 'Piano Sonata No. 27', '1814','piano',4.60,'False')
insert into Pieces values (015, 3, 'Liebestraum', '1850','piano',3.00,'True')
insert into Pieces values (016, 10, 'The Entertainer', '1910','piano',4.99,'False')
insert into Pieces values (017, 10, 'Meditation', '1893','violin',2.00,'True')


select * from Pieces
join Famous_Composers on Pieces.composer_id = Famous_Composers.id
join Customer on Pieces.customer_id = Customer.id

create table Customer_Piece(
customer_id numeric,
piece_id numeric,
price float,
FOREIGN KEY(customer_id) REFERENCES Customer(id),
FOREIGN KEY(piece_id) REFERENCES Pieces(id),
PRIMARY KEY (customer_id, piece_id)
)

drop table Customer_Piece

insert into Customer_Piece values (1, 1, 1.24)
insert into Customer_Piece values (1, 6, 3.40)

insert into Customer_Piece values (4, 2, 4.20)

Select Customer.name, Pieces.name_of_piece from Customer_Piece
join Customer on  Customer_Piece.customer_id = Customer.id
join Pieces on Customer_Piece.Piece_id = Pieces.id
where Customer.name = 'Angela'


--where customer_id = 1



--Find total price paid by customer 


Select Customer.name, SUM(Customer_Piece.price) from Customer_Piece
join Customer on  Customer_Piece.customer_id = Customer.id
join Pieces on Customer_Piece.Piece_id = Pieces.id
where Customer.name = 'Angela'
group by customer.name
--Find total price paid for Specific composer




