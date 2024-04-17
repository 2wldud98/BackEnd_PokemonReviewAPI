insert into roles (name) values ('ROLE_ADMIN');
insert into users (first_name,last_name,password,username) values
    ('dooly','park','$2a$10$6/IO0qAlvEIUBBbMTe6Jp.CUAVSoHhCQsll6dlqslpAiWLnuwYOpK','admin');
insert into user_roles (user_id,role_id) values (1,1);

insert into roles (name) values ('ROLE_USER');
insert into users (first_name,last_name,password,username) values
    ('spring','kim','$2a$10$O/nGwBc0NKPvVY1XfB0HcO6/9Ekc61KYA9UB1F6qh8qTOXqh7T2jK','boot');
insert into user_roles (user_id,role_id) values (2,2);