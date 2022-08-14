create table concessions (
	conc_id SERIAL primary key,
	conc_name VARCHAR(100),
	conc_price NUMERIC(4,2)
);

create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(200),
	movie_date DATE default CURRENT_DATE,
	movie_time TIME default CURRENT_TIMESTAMP
);

create table tickets (
	ticket_id SERIAL primary key,
	ticket_cost NUMERIC(4,2),
	movie_id INTEGER,
	foreign key(movie_id) references movies(movie_id)
);

create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150),
	ticket_id INTEGER not null,
	conc_id INTEGER not null,
	foreign key(ticket_id) references tickets(ticket_id),
	foreign key(conc_id) references concessions(conc_id)
);

select * from tickets;