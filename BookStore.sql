create database bookstore;
use bookstore;

create table Authors(author_id int auto_increment primary key,
author_name varchar(255) not null,
bio text);
desc Authors;

create table Books(book_id int auto_increment primary key,
title varchar(255) not null,
isbn varchar(255) not null unique,
price decimal(10,2) not null,
author_id int,
publication_date date,
stock_quantity int not null,
constraint fk_author
foreign key(author_id)
references Authors(author_id)
on delete set null
on update cascade);
desc Books;

create table Customers(customer_id int primary key auto_increment,
customer_name varchar(255) not null,
email varchar(255) not null unique,
join_date date not null);
desc Customers;

create table Orders(order_id int auto_increment primary key,
customer_id int not null,
order_date date not null,
order_status varchar(255) not null,
constraint fk_customer
foreign key(customer_id)
references Customers(customer_id)
on delete cascade
on update cascade);
desc Orders;

create table OrderDetails(order_detail_id int primary key auto_increment,
order_id int not null,
book_id int not null,
quantity int not null,
price_during_sale decimal(10,2) not null,
constraint fk_order
foreign key(order_id)
references Orders(order_id)
on delete cascade
on update cascade,
constraint fk_book
foreign key(book_id)
references Books(book_id)
on delete cascade
on update cascade);
desc OrderDetails;

insert into Authors(author_name, bio) values ('Mark Twain','Mark Twain, born Samuel Langhorne Clemens in 1835, was an iconic American writer and humorist, best known for "The Adventures of Tom Sawyer" and "Adventures of Huckleberry Finn." His work celebrated American culture and captured the spirit of the Mississippi River era.'),
('Lewis Carrol','Lewis Carroll, born Charles Lutwidge Dodgson in 1832, was a British writer, mathematician, and photographer famous for his classic children books Alice Adventures in Wonderland and its sequel Through the Looking-Glass.'),
('Kazi Nasrul Islam','Kazi Nazrul Islam, born in 1899, was a Bengali poet, writer, and revolutionary, celebrated as the Rebel Poet for his fierce opposition to British rule in India. His works champion political and social justice, earning him a revered place in Bengali culture.'),
('Coleridge','Samuel Taylor Coleridge, born in 1772, was an English poet, literary critic, philosopher, and founder of the Romantic Movement in England, best known for his works "The Rime of the Ancient Mariner" and "Kubla Khan."'),
('G.B.Shaw','George Bernard Shaw, born in 1856, was an Irish playwright, critic, polemicist, and political activist known for his wit and for winning the Nobel Prize in Literature in 1925. His notable works include "Pygmalion" and "Saint Joan."'),
('George Orwell','George Orwell, born Eric Arthur Blair in 1903, was an English novelist, essayist, journalist, and critic best known for his dystopian novel 1984 and the allegorical novella Animal Farm, both sharp criticisms of totalitarianism.'),
('Lewis Wallace','Lewis Wallace, born in 1827, was an American lawyer, Union general in the American Civil War, governor of the New Mexico Territory, and writer, best known for his historical novel Ben-Hur: A Tale of the Christ.');
insert into Authors(author_name, bio) values ('Jules Verne','ules Verne, born in 1828, was a French novelist, poet, and playwright known as one of the pioneers of science fiction, with famous works including Around the World in Eighty Days and Twenty Thousand Leagues Under the Sea.'),
('Babur','Babur, born in 1483, was a Central Asian conqueror who founded the Mughal Empire in India, chronicling his life and adventures in the autobiographical Baburnama, a seminal work in Islamic literature.'),
('Leo Tolstoy','Leo Tolstoy, born in 1828, was a Russian writer renowned for his epic novels War and Peace and Anna Karenina, exploring themes of morality, religion, and social justice, significantly influencing literature and philosophy.'),
('Kautilya','Kautilya, also known as Chanakya, was an ancient Indian teacher, philosopher, economist, jurist, and royal advisor, best known for authoring the Arthashastra, a seminal treatise on political science and economics in India.'),
('Jane Austen','Jane Austen, born in 1775, was an English novelist known for her keen observations of early 19th-century English society in classics such as Pride and Prejudice and Sense and Sensibility.'),
('Bankimchandra Chattopadhyay','Bankimchandra Chattopadhyay, born in 1838, was a Bengali novelist and poet who is considered a key figure in the literary renaissance of Bengal and India, best known for composing the national song Vande Mataram.'),
('Jean Jacques Rousseau','Jean-Jacques Rousseau, born in 1712, was a Genevan philosopher, writer, and composer of the 18th century Enlightenment, whose works on political philosophy, notably The Social Contract, deeply influenced the French Revolution and modern political thought.'),
('Adolf Hitler','Adolf Hitler, born in 1889, was a German politician and leader of the Nazi Party, who rose to power as Chancellor of Germany in 1933 and later Führer in 1934, initiating World War II and overseeing fascist policies that led to the Holocaust.');
select * from Authors;

insert into Books(title, isbn, price, author_id, publication_date, stock_quantity) values ('Alice in Wonderland','978-1554810390', 97.00, 2, '2011-03-23', 47),
('Animal Farm','978-0452284241', 100.00, 6,'2003-05-06', 67),
('Pride and Prejudice','978-0143105428', 129.50, 12,'2009-08-25', 101),
('Arthashastra', '978-0140446036', 239.50, 11, '1992-08-27', 23),
('Anna Karenina', '978-3732632237', 649.75, 10, '2023-11-04', 59);
select * from Books;
insert into Books(title, isbn, price, author_id, publication_date, stock_quantity) values ('Adventures of Tom Sawyer', '978-2487116221', 220.99, 1, '2023-11-18', 49),
('Agni Veena', '984-5553095', 329.67, 3, '1922-10-01', 12),
('Ancient Mariner', '984-6539095', 268.99, 4, '2006-05-30', 9),
('Arms and the Man', '978-8125042471', 250.00, 5, '2011-01-01', 38),
('Mein Kampf', '978-0395925034', 441.75, 15, '2009-04-22', 123),
('Le Contract Social', '978-0140442014', 323.00, 14, '2003-07-31', 46),
('Anand Math', '978-9393267122', 145.99, 13, '2022-07-04', 98);

insert into Customers(customer_name, email, join_date) values ('Raj Sharma', 'raj23@gmail.com', '2021-01-03'),
('Avni Singh', 'avnisingh@yahoo.co.in', '2022-10-23'),
('Sahil Ahmed', 'sahil45@gmail.com', '2021-05-02'),
('S.Sathya', 'sathyaraghu@yahoo.co.in', '2021-04-07'),
('Mansi Kaushal', 'kaushalmansi3@gmail.com', '2021-09-17'),
('Sarika John', 'john12@company.com', '2022-02-28'),
('Rama Raghavan', 'raghavrama68@company.com', '2023-06-19'),
('Jiya Tiwari', 'jiyahere54@gmail.com', '2022-07-07'),
('Satyakamini Sareen', 'kaminisatya32@yahoo.co.in', '2023-12-12');
select * from Customers;
insert into Customers(customer_name, email, join_date) values ('Priya Desai', 'desaipriya@company.com', '2023-03-30'),
('Rehman Sohail', 'sohail123@gmail.com', '2021-12-12'),
('Yukta Biswas', 'yuku789@yahoo.co.in', '2023-08-13'),
('Nandini Devi', 'nandinidevi29@company.com', '2020-11-23'),
('Juhi Tamang', 'tamangjuhi24@gmail.com', '2020-07-14'),
('Zara Ameen', 'zaraameen@company.com', '2022-12-18'),
('Maneesh Gupta', 'manishgupta89@yahoo.co.in', '2020-08-09'),
('Rajalakshmi', 'rajalakshmi234@gmail.com', '2021-03-23'),
('Sania Singh', 'saniahere567@company.com', '2023-04-19'),
('Srihari', 'srihari8921@gmail.com', '2020-09-05');
select * from Customers;

insert into Orders(customer_id, order_date, order_status) values (41, '2023-01-02', 'Completed'),
(32, '2023-05-14', 'Completed'),
(5, '2024-01-23', 'Delivered'),
(1, '2023-04-14', 'Completed'),
(41, '2023-12-12', 'Delivered'),
(32, '2023-09-08', 'Completed'),
(1, '2023-06-09', 'Completed'),
(5, '2023-12-17', 'Delivered'),
(6, '2023-03-03', 'Completed'),
(8, '2023-04-19', 'Completed'),
(39, '2023-07-09', 'Completed'),
(40, '2024-02-02', 'Processing'),
(40, '2024-02-02', 'Processing'),
(40, '2024-01-31', 'Cancelled'),
(37, '2023-09-03', 'Completed'),
(37, '2024-01-11', 'Delivered'),
(36, '2024-02-07', 'Processing'),
(9, '2024-02-01', 'Processing'),
(34, '2024-02-10', 'Cancelled'),
(33, '2023-05-05', 'Completed'),
(33, '2023-05-05', 'Completed'),
(2, '2023-08-16', 'Completed'),
(7, '2023-11-27', 'Delivered'),
(38, '2023-10-22', 'Completed'),
(40, '2023-12-29', 'Completed');
select * from Orders;

insert into OrderDetails(order_id, book_id, quantity, price_during_sale) values (1, 3, 12, 132.00),
(1, 1, 12, 105.00),
(1, 4, 15, 250.00),
(2, 10, 13, 450.00),
(2, 11, 10, 330.00),
(2, 7, 6, 330.00),
(3, 5, 10, 655.00),
(3, 8, 4, 261.50),
(3, 6, 12, 275.00),
(3, 5, 14, 610.00),
(4, 1, 9, 110.00),
(5, 2, 8, 140.00),
(5, 3, 10, 144.50),
(6, 11, 3, 350.50),
(6, 12, 5, 175.00),
(7, 7, 6, 340.50),
(7, 3, 10, 140.00),
(7, 10, 10, 500.00),
(8, 3, 4, 135.75),
(9, 10, 7, 475.00),
(10, 10, 18, 500.75),
(11, 3, 11, 150.00),
(12, 9, 22, 300.00),
(12, 2, 23, 150.00),
(12, 1, 6, 150.00),
(13, 12, 20, 150.50),
(13, 10, 20, 445.75),
(14, 8, 5, 300.00),
(15, 11, 19, 350.50),
(15, 4, 8, 250.50),
(16, 1, 10, 150.00),
(17, 5, 20, 700.00),
(17, 10, 10, 500.00),
(18, 12, 32, 250.00),
(18, 10, 32, 498.50),
(19, 1, 10, 200.50),
(20, 2, 30, 90.50),
(20, 3, 30, 100.75),
(21, 5, 10, 680.50),
(21, 12, 20, 130.60),
(22, 6, 20, 200.75),
(23, 5, 5, 650.00),
(23, 12, 20, 150.00),
(24, 9, 10, 210.00),
(24, 10, 10, 425.75),
(25, 6, 10, 240.50),
(25, 11, 10, 350.50),
(25, 3, 20, 150.50);
select * from OrderDetails;

update Books set stock_quantity = 200 where book_id >= 1 and book_id <= 12;
update Books set isbn = '984-8274657790' where book_id = 7;
update Books set isbn = '984-2648165597' where book_id = 8;

-- ---------------------------------Queries-----------------------------------------

-- Highest demanded books of all time
select Books.title, sum(quantity) as books_ordered
from OrderDetails join Books on OrderDetails.book_id = Books.book_id
group by Books.title order by sum(quantity) desc;

-- Top 5 highest demanded books of all time
select Books.title, sum(quantity) as books_ordered
from OrderDetails join Books on OrderDetails.book_id = Books.book_id 
group by Books.title order by sum(quantity) desc limit 5;

-- Top selling books in 2023
select Books.title, sum(quantity) as books_sold
from OrderDetails join Books on OrderDetails.book_id = Books.book_id
join Orders on OrderDetails.order_id = Orders.order_id
where year(Orders.order_date) = 2023 and Orders.order_status <> 'Cancelled'
group by Books.title order by sum(quantity) desc;

-- Top selling books from August 2023 to December 2023
select Books.title, sum(quantity) as books_sold
from OrderDetails join Books on OrderDetails.book_id = Books.book_id
join Orders on OrderDetails.order_id = Orders.order_id
where Orders.order_date between '2023-08-01' and '2023-12-31' and Orders.order_status <> 'Cancelled'
group by Books.title order by sum(quantity) desc;

-- Revenue generated through each Book
select Books.title, sum(quantity * price_during_sale) as revenue
from OrderDetails join Books on OrderDetails.book_id = Books.book_id
join Orders on OrderDetails.order_id = Orders.order_id
where Orders.order_status = 'Completed'
group by Books.title order by sum(quantity * price_during_sale) desc;

-- Total Sales Revenue generated
select sum(quantity * price_during_sale) as total_sales_revenue from OrderDetails
join Orders on OrderDetails.order_id = Orders.order_id where Orders.order_status = 'Completed';

-- Total revenue generated from July 2023 till date
select sum(quantity * price_during_sale) as total_sales_revenue from OrderDetails
join Orders on OrderDetails.order_id = Orders.order_id where Orders.order_status = 'Completed'
and Orders.order_date >= '2023-07-01';

-- List of Customers who ordered maximum books
select Customers.customer_name, Customers.email, sum(quantity) as books_sold
from Customers join Orders on Customers.customer_id = Orders.customer_id
join OrderDetails on OrderDetails.order_id = Orders.order_id
where Orders.order_status <> 'Cancelled'
group by Customers.customer_name, Customers.email order by sum(quantity) desc;

-- List of Best selling book Authors
select Authors.author_name, Authors.bio, Books.isbn as book_isbn, sum(quantity) as books_sold
from Authors join Books on Authors.author_id = Books.author_id
join OrderDetails on OrderDetails.book_id = Books.book_id
group by Authors.author_name, Authors.bio, Books.isbn order by sum(quantity) desc;