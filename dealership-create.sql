create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table vehicle (
	serial_number SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(50),
	year_ NUMERIC(4),
	color VARCHAR(50)
);

create table parts (
	part_id SERIAL primary key,
	part_name VARCHAR(100),
	part_amount NUMERIC(7,2)
);

create table invoice (
	invoice_id SERIAL primary key,
	total_cost NUMERIC(7,2),
	customer_id INTEGER not null,
	foreign key (customer_id) references customer(customer_id),
	serial_number INTEGER not null,
	foreign key (serial_number) references vehicle(serial_number),
	salesperson_id INTEGER not null,
	foreign key (salesperson_id) references salesperson(salesperson_id)
);

create table service_ticket (
	service_id SERIAL primary key,
	description VARCHAR(200),
	total_cost numeric (7,2),
	part_id INTEGER not null,
	customer_id integer not null,
	serial_number integer not null,
	mechanic_id integer not null,
	foreign key (part_id) references parts(part_id),
	foreign key (customer_id) references customer(customer_id),
	foreign key (serial_number) references vehicle(serial_number),
	foreign key (mechanic_id) references mechanic(mechanic_id)
)

