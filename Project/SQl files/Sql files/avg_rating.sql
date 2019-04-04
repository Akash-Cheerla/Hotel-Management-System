drop function if exists avg_rating;
DELIMITER $$
create function avg_rating(id varchar(10))
returns decimal(10,2)
deterministic
begin
declare avg_rate decimal(10,2);
	select avg(rating) into avg_rate
	from feed_back where hotel_id=id;
return avg_rate;
end; $$
DELIMITER ;

drop procedure if exists ret_rating_val;
DELIMITER $$
create procedure ret_rating_val(in val decimal(10,2))
begin
select hotel_id,avg(rating) as avg_rate
from feed_back group by hotel_id having avg_rate>=val order by avg_rate asc;
end; $$
DELIMITER ;

