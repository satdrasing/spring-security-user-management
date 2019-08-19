insert into user (user_id, active, email, first_name, last_name, password)
values (1, 1, 'satendra@abc.com','satendra','singh','$2a$10$wCE5hAuAF2mQ4GcNOqoy4.PmcL2PNqUHl5LRCjUx2P0yN7lgE9YRa');

insert into role (role_id, role) values(1, 'admin');

insert into user_role (user_id, role_id) values(1,1);


create table groups (
  id bigint generated by default as identity(start with 0) primary key,
  group_name varchar_ignorecase(50) not null);

create table group_authorities (
  group_id bigint not null,
  authority varchar(50) not null,
  constraint fk_group_authorities_group foreign key(group_id) references groups(id));

create table group_members (
  id bigint generated by default as identity(start with 0) primary key,
  username varchar(50) not null,
  group_id bigint not null,
  constraint fk_group_members_group foreign key(group_id) references groups(id));

insert into groups(id, group_name) values (1,'superadmin');
insert into groups(id, group_name) values (2,'qualitymanager');
insert into groups(id, group_name) values (3,'trainingsamplecollector');

insert into group_authorities (group_id, authority) values (1, 'viewanywhere');
insert into group_authorities (group_id, authority) values (1, 'insertanywhere');
insert into group_authorities (group_id, authority) values (1, 'updateanywhere');
insert into group_authorities (group_id, authority) values (1, 'deleteanywhere');

insert into group_authorities (group_id, authority) values (2, 'viewwithingroup');
insert into group_authorities (group_id, authority) values (2, 'inserwithingroup');
insert into group_authorities (group_id, authority) values (2, 'updatewithingroup');
insert into group_authorities (group_id, authority) values (2, 'deletewhitingroup');

insert into group_members (id, username, group_id) values(1,'satendra@abc.com',1);


