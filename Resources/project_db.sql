DROP TABLE rankings

CREATE TABLE rankings (
		name VARCHAR,
		rank VARCHAR,
		state VARCHAR,
		PRIMARY KEY (name)
);

select * from rankings

DROP TABLE earnings

CREATE TABLE earnings (
		school_name VARCHAR,
		starting_median_salary VARCHAR
		
);	

select * from earnings


SELECT  r.name,
        r.rank,
        e.starting_median_salary
FROM rankings as r
JOIN earnings as e
	on (r.name = e.school_name)
ORDER BY e.starting_median_salary desc;	

