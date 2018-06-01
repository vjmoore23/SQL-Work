
create table customer(

	customerID number(10,0),
	name varchar2(20),
	address varchar2(20),
	phone_number varchar2(20),

	rentalsID number(10,0),
        constraint rentalsIDfk foreign key (rentalsID) references rentals(rentalsID),

	constraint customerIDpk primary key (customerID)
);

insert into customer values (1, 'tom moore', '111 Kent Lane 20715', '111-1111', 1);
insert into customer values (2, 'vanessa smith', '222 Kent Lane 20715', '222-2222', 2);
insert into customer values (3, 'marcus robert', '333 Kent Lane 20715', '333-3333',3);
insert into customer values (4, 'alyssa jane', '444 Kent Lane 20715', '444-4444', 4);
insert into customer values (5, 'jane mentzer', '555 Kent Lane 20715', '555-5555',5);


create table videodvd(
	
	videodvdID number(10,0),
	distrib_serialno varchar2(20),
	video_or_dvd varchar2(20),

	distributorID number(10,0),
	constraint distributorIDfk(distributorID) references distributor(distributorID),
	movieID number(10.,0),
	constraint moveIDfk(movieID) references movie(movieID),
	constraint videodvdIDpk primary key (videodvdID),
	
);

insert into videodvd values (1, 'lkj234', 'dvd', 1, 5);
insert into videodvd values (2, '2o3i4u', 'dvd', 1, 4);
insert into videodvd values (3, '23lk4j', 'dvd', 3, 3);
insert into videodvd values (4, '0a9s8d09as', 'video', 4, 2);
insert into videodvd values (5, '8sa7d8sd', 'video', 5, 1);

create table distributor(

	distributorID number(10,0),
	name varchar2(20),
	num_of_shipments number(10,0),

	constraint distributorIDpk primary key(distributorID)
);

insert into distributor values(1, 'Movies Plus', 5);
insert into distributor values(2, 'Bundle Movies', 15);
insert into distributor values(3, 'Awards Video', 10);
insert into distributor values(4, 'Movies Movies Movies', 8);
insert into distributor values(5, 'Must See Movies', 15);

create table shipment(

	shipmentID number(10,0),
	shipment_quanity number(10,0),
	total_price number(10,0),

	constraint distributorIDfk foreign key (distributorID),
	
	constraint shipmentIDpk primary key(shipmentID)
	
);

insert into shipment values(1, 5, $90.99, 1);
insert into shipment values(2, 15, $190.99, 2);
insert into shipment values(3, 10, $150.55, 3);
insert into shipment values(4, 8, $98.67, 4);
insert into shipment values(5, 15, $195.88, 5);

create table catalog(

	catalogID number(10,0),
	movie varchar2(20),
	
	distributorID number(10,0),
	constraint distributorIDfk(distributorID) references distributor(distributorID),

	constraint catalogIDpk primary key (catalogID)
);

insert into catalog values(1, 'Forest Gump', 1);
insert into catalog values(2, 'Braveheart', 2);
insert into catalog values(3, 'Saving Private Ryan', 3);
insert into catalog values(4, 'Pearl Harbor', 4);
insert into catalog values(5, 'We Were Soliders', 5);

create table movie(
	
	movieID number(10,0),
	title varchar2(20,0),
	rating varchar(20,0),
	year number(10,0),

	catalogID number(10,0),
	constraint catalogIDfk(catalogID) references catalog(catalogID),
	actorID number(10,0),,
	constraint actorIDfk(actorID) references actor(actorID),
	genreID number(10,0),
	constraint genreIDfk(genreID) references genre(genreID),
	directorID number(10,0),
	constraint directorIDfk(directorID) references director(directorID),
	awardID number(10,0),
	constraint awardIDfk(awardID) references awards(awardID),

	constraint movieIDpk primary key(movieID),
);

insert into movie values(1, 'Forest Gump', 'PG-13', 1994, 1, 1, 1, 1, 1);
insert into movie values(2, 'Braveheart', 'R', 1996, 2, 2, 1, 2, 1);
insert into movie values(3, 'Saving Private Ryan', 'R', 1999, 3, 1, 2, 3, 1);
insert into movie values(4, 'Pearl Harbor', 'PG-13', 2001, 4, 3, 2, 4, 1);
insert into movie values(5, 'We Were Soliders', 'R', 2003, 5, 2, 2, 3, 1);

create table genre(

	genreID number(10,0),
	genre_name varchar2(20),
	
	constraint genreIDpk primary key(genreID),
	
);

insert into genre values(1, 'drama');
insert into genre values(2, 'war');
insert into genre values(3, 'action');
insert into genre values(4, 'family');
insert into genre values(5, 'comdey');


create table director(

	directorID number(10,0),
	name varchar2(20),
	
	constraint directorIDpk primary key(directorID),
	
);

insert into director values(1, 'tom hanks');
insert into director values(2, 'mel gibson');
insert into director values(3, 'jj abrams');
insert into director values(4, 'tom smith');
insert into director values(5, 'marcus moore');

create table actor(

	actorID number(10,0),
	name varchar2(20,0),

	movieID number(10,0),
	constraint movieIDfk(movieID) references movie(movieID),
	constraint actorIDpk primary key(actorID),
	
	
);

insert into actor values(1, 'tom hanks', 1);
insert into actor values(2, 'mel gibson', 2);
insert into actor values(3, 'ben affleck', 3);
insert into actor values(4, 'brad pitt', 4);
insert into actor values(5, 'mat ryan', 5);



create table awards(

	awardID number(10,0),
	award_name varchar2(20),

	constraint awardIDpk primary key(awardID),
);

insert into awards values(1, oscar best movie);
insert into awards values(1, oscar best actor);
insert into awards values(1, oscar best actress);
insert into awards values(1, oscar best soundtrack);
insert into awards values(1, oscar best director);


create table rentals(

	rentalID number(10,0),
	rental_date varchar2(20),
	return_date varchar2(20),

	constraint rentalIDpk primary key(rentalID),
	
);

insert into rentals values(1, '08/10/2017', '08/17/2017);
insert into rentals values(2, '09/10/2017', '09/17/2017);
insert into rentals values(3, '10/01/2017', '08/17/2017);
insert into rentals values(4, '08/10/2017', '08/17/2017);
insert into rentals values(5, '08/10/2017', '08/17/2017);

create table discount(

	discountID number(10,0),
	discount_value number(10,0),

	videodvdID number(10,0),
	constraint videodvdIDfk(videodvdID) references videodvd(videodvdID),
	constraint discountIDpk primary key(discountID),
	
	
);

insert into discount values(1, 10, 1);	
insert into discount values(2, 20, 2);	
insert into discount values(3, 30, 3);	
insert into discount values(4, 40, 4);	
insert into discount values(5, 50, 5);	

	
select customerID, name, address from customer order by customerID;

select rental_date from rentals;

select * from distributor order by name;

update customer set name = 'married name where name is 'maiden';

delete from customer where customerID = 1;

cat test.lst