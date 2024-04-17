DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

create table users (
   id integer not null auto_increment,
   first_name varchar(255),
   last_name varchar(255),
   password varchar(255) not null,
   username varchar(255) not null,
   primary key (id)
) engine=InnoDB;

create table roles (
   id integer not null auto_increment,
   name varchar(255) not null,
   primary key (id)
) engine=InnoDB;

create table user_roles (
    role_id integer not null,
    user_id integer not null
) engine=InnoDB;

alter table users add constraint UK_USERS unique (username);
alter table roles add constraint UK_ROLES unique (name);
alter table user_roles add constraint FK_USERS foreign key (user_id) references users (id);
alter table user_roles add constraint FK_ROLES foreign key (role_id) references roles (id);