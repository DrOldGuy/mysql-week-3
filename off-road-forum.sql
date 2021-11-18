drop table if exists comment;
drop table if exists destination;
drop table if exists member;

create table member (
    member_id int not null auto_increment,
    first_name varchar(48) not null,
    last_name varchar(48) not null,
    email varchar(128) not null,
    phone_number varchar(20),
    password varchar(40),
    primary key (member_id)
);

create table destination (
    destination_id int not null auto_increment,
    member_id int not null,
    name varchar(256) not null,
    description text not null,
    geolocation varchar(60) not null,
    time_to_traverse time,
    difficulty enum('1', '2', '3', '4', '5'),
    publish_timestamp timestamp not null default current_timestamp,
    primary key (destination_id),
    foreign key (member_id) references member (member_id)
);

create table comment (
    comment_id int not null auto_increment,
    member_id int not null,
    destination_id int not null,
    comment text,
    publish_timestamp timestamp not null default current_timestamp,
    primary key (comment_id),
    foreign key (member_id) references member (member_id),
    foreign key (destination_id) references destination (destination_id)
);