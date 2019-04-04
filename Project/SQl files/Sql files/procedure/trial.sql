drop procedure if exists room_availaible;
delimiter $$
create procedure room_availaible(in d DATE,in dat DATE)
begin
declare x DATE;
set x=2009/2/3;
if d>x then 
select *from hotel;
end if;
end;$$
delimiter ;