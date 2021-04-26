create database Opennings;

create table users (
userId int primary key,
username varchar(255),
email varchar(255),
passwords varchar(255),
qualification varchar(255)
);
insert into users(userId, username, email, passwords, qualification)
values (01, "abelM", "abel@gmail.com", "123456", "Commerce"),
(02, "kenK", "mrkenedy@gmail.com", "2541kiki", "Computer science"),
(03, "anitaD", "daviesann@gmail.com", "dA78ad", "Fashion Designer");

create table openings(
jobId int primary key,
skills varchar(255),
title varchar(255),
neededQualifications varchar(255)
);

insert into openings (jobId, skills, title, neededQualifications)
values 
(001, "cisco, microsoft, fluency in spoken english", "Networking customer care", "Cisco certificate"),
(002, "excel", "data entry", "computer operations certificate");
    
create table referenc (
fullNames varchar(255),
phoneNumber varchar(20)
);

insert into referenc (fullNames, phoneNumber)
values
("Anita Davies", "0800-234563"),
("Mr. Abel Lincon", "(415) 154-7264"),
("Panama Kutt", "(56) 225-2284");
create table contacts (
contactNames varchar(255),
sourcedContacts varchar(20)
);

insert into contacts (contactNames, sourcedContacts)
values 
("Mr. Shakur Sigh", "0800-672572"),
("Jesica Day", "(415) 154-7264"),
("Jake Johnsons", "45) 818-0234");

create table jobs (
jobsA varchar(255),
foreign key (userId) references users(userId),
foreign key (jobId) references openings(jobId)
);
insert into jobs(jobsA)
values 
("available");
