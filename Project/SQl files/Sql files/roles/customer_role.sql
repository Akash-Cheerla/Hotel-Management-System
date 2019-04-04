drop user cust;
create user cust identified by "customer";
grant select on customer to cust;
grant select on hotel to cust;

