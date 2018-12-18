delimiter //
create function f_student_avr(sid tinyint) RETURNS smallint
BEGIN
	RETURN (select avg((g.midterm+g.finalterm)/2) '전과목평균점수'
			 from Student s inner join Enroll e on e.student = s.id
							inner join Grade g on g.enroll = e.id
             group by s.id having s.id = sid);
END //

delimiter ;