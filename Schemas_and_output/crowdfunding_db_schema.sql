drop table if exists contacts;
drop table if exists campaign;
drop table if exists subcategory;
drop table if exists category;


create table category(
	category_id varchar(30) not null,
	category varchar(50) not null,
	PRIMARY KEY (category_id)
);

create table subcategory(
	subcategory_id varchar(50) not null,
	subcategory varchar(100) not null,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign(
	cf_id integer not null,
	contact_id varchar(100) not null,
	company_name varchar(100) not null,
	description varchar(250) not null,
	goal float not null,
	pledged float not null,
	outcome varchar(20) not null,
	backers_count integer not null,
	country varchar(30) not null,
	currency varchar(20) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(10) not null,
	subcategory_id varchar(12) not null,
	PRIMARY KEY (contact_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory (subcategory_id)
);

CREATE TABLE contacts (
	contact_id varchar(100) not null,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email varchar(100) not null,
	primary key (contact_id),
	FOREIGN KEY (contact_id) references campaign (contact_id)
);
	
		
	
