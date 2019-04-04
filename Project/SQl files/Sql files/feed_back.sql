
DROP TABLE IF EXISTS feed_back;
create table feed_back
(customer_id varchar(10) not null,
hotel_id varchar(10),
feed_back_date varchar(12) not null,
rating int,
review varchar(200),
primary key(customer_id,feed_back_date),
FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id))
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

