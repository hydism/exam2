Delimiter //
create trigger tr_addclub_ranleader
	after insert on Club For Each Row
BEGIN
    insert into Clubmember(name, student, level) values(New.id, ceil(rand()*1000), 2);

     
END //

delimiter ;

insert into Club(name) value('밴드부');

select * from Clubmember order by id desc;