create or replace function add_vehicle(_serial_number INTEGER, _make VARCHAR, _model VARCHAR, _year_ numeric, _color VARCHAR)
returns void
as $MAIN$
begin
	insert into vehicle(serial_number, make, model, year_, color)
	values (_serial_number, _make, _model, _year_, _color);
end;
$MAIN$
language plpgsql

select add_vehicle(123456789, 'Toyota', 'RAV4', 2009, 'Black');

select add_vehicle(987654321, 'Hyundai', 'Tucson', 2023, 'Charcoal')

insert into customer(
	customer_id,
	first_name,
	last_name
) values (
	1,
	'David',
	'Brown'
);

insert into customer(
	customer_id,
	first_name,
	last_name
) values (
	2,
	'Jennifer',
	'Brown'
);

insert into salesperson (
	salesperson_id,
	first_name,
	last_name
) values (
	1,
	'Hugh',
	'Hughes'
);

insert into salesperson (
	salesperson_id,
	first_name,
	last_name
) values (
	2,
	'Robert',
	'Robertson'
);

insert into parts(
	part_id,
	part_name,
	part_amount
) values (
	1,
	'Radiator',
	112.49
)

insert into parts(
	part_id,
	part_name,
	part_amount
) values (
	2,
	'Alternator',
	87.50
)

insert into mechanic (
	mechanic_id,
	first_name,
	last_name
) values (
	1,
	'James',
	'Jameson'
)

insert into mechanic (
	mechanic_id,
	first_name,
	last_name
) values (
	2,
	'Donald',
	'Donaldson'
)

insert into invoice (
	invoice_id,
	total_cost,
	customer_id,
	serial_number,
	salesperson_id
) values (
	1,
	10000,
	1,
	123456789,
	1
)

insert into invoice (
	invoice_id,
	total_cost,
	customer_id,
	serial_number,
	salesperson_id
) values (
	2,
	50000,
	2,
	987654321,
	2
)

insert into service_ticket (
	service_id,
	description,
	total_cost,
	part_id,
	customer_id,
	serial_number,
	mechanic_id
) values (
	1,
	'Replaced the alternator',
	327.87,
	2,
	1,
	123456789,
	1
)

insert into service_ticket (
	service_id,
	description,
	total_cost,
	part_id,
	customer_id,
	serial_number,
	mechanic_id
) values (
	2,
	'Replaced the radiator',
	374.60,
	1,
	2,
	987654321,
	2
)
