insert into concessions(
	conc_id,
	conc_name,
	conc_price
)VALUES(
	1,
	'Popcorn',
	6.00
);

insert into movies(
	movie_id,
	movie_name,
	movie_date,
	movie_time
)VALUES(
	1,
	'The Lord of the Rings',
	CURRENT_DATE,
	CURRENT_TIMESTAMP
);

insert into tickets(
	ticket_id,
	ticket_cost,
	movie_id
)VALUES(
	1,
	10.00,
	1
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	billing_info,
	ticket_id,
	conc_id
)VALUES(
	1,
	'John',
	'Smith',
	'1234-5678-8765-4321 999 12/22',
	1,
	1
);

select * from customers