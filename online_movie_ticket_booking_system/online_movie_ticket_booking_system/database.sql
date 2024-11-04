create database online_movie_ticket_booking_system;

use online_movie_ticket_booking_system

create table user_registration
(
 id int primary key auto_increment,
 first_name varchar(200),
 last_name varchar(200),
 phone_no bigint(200),
 email_id varchar(200),
 password varchar(200),
 c_pass varchar(200)
);

create table user_profile
(
 id int primary key auto_increment,
 name varchar(200),
 surname varchar(200),
 phone_no bigint(200),
 email_id varchar(200)
);

create table payment_page
(
 id  int primary key auto_increment,
 name varchar(200),
 phone_no bigint(200),
 amount bigint(200),
 payment_method nvarchar(200),
 payment_no nvarchar(200)
);

create table feedback_page
(
 id int primary key auto_increment,
  user_id int,
  user_name varchar(45),
 description varchar(300)
);

create table booking_page
(
  id int primary key auto_increment,
  user_id int,
  user_name varchar(45),
  movie_id int,
  movie_name nvarchar(45),
  movie_image nvarchar(100),
  time varchar(45),
  date nvarchar(45),
  no_of_seats varchar(45),
  price varchar(45)

);

create table admin_assistant
(
 id int primary key auto_increment,
 movie_name varchar(200),
 casting varchar(200),
 release_date nvarchar(45),
 info varchar(200),
 add_movie nvarchar(200)
);

create table admin_registration
(
 id int primary key auto_increment,
 first_name varchar(200),
 last_name varchar(200),
 phone_no bigint(200),
 email_id varchar(200),
 password varchar(200),
 con_pass varchar(200)
);


create table seat_bookings
(
	booking_id int auto_increment primary key,
	user_id int,
	user_name varchar(45),
	movie_id int,
	movie_name nvarchar(45),
	movie_image nvarchar(100),
	time varchar(45),
	date nvarchar(45),
	seat_no int

);
