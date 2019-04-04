
create table food_service(
customer_id varchar(10)
service_date DATE,
service_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAM,
food_service_id varchar(10)
price int
primary key(food_service_id)
constraint food2cust foreign key(customer_id) references customer (customer_id))

create table food_order(
food_service_id varchar(10)
food varchar(30)
quantity int
price int
primary key(food_service_id,food)
constraint ord2food foreign key(food_service_id) references food_service (food_service_id))
)

create table vehicle_rent(
customer_id varchar(10),
date_of rent  DATE,
time_of_rent TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAM,
vechicle_type varchar(20),
vehicle_num varchar(20),
charge_per_hour int,
primary key(customer_id,datte_of_rent,time_of_rent),
constraint rent2cust foreign key(customer_id) references customer (customer_id))

create table cab(
customer_id varchar(10),
cab_type varchar(20),
booking_date DATE,
charge_per_distance int,
distance int,
primary key(customer_id,booking_date),
constraint cab2cust foreign key(customer_id) references customer (customer_id))

    
    
create table bill(
cust_id varchar
service_type varchar
price int
)

create table feed_back(
customer_id varchar(10),
feed_back_date DATE,
hotel_id varchar(10),
rating int,
review varchar(200),
primary key(customer_id,feed_back_date),
constraint feed2cust foreign key(customer_id) references customer (customer_id),
constraint feed2hotel foreign key(hotel_id) references hotel (hotel_id))




