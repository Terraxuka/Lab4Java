drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_done boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
drop table if exists dishes cascade ;
drop table if exists dishes_toppings cascade ;
drop table if exists orders cascade ;
drop table if exists orders_dishes cascade ;
drop table if exists toppings cascade ;
drop table if exists users cascade ;
drop table if exists users_orders cascade ;
create table dishes (is_active boolean, is_base boolean, is_modifying boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), name varchar(255), primary key (id));
create table dishes_toppings (dish_id bigint not null, toppings_id bigint not null);
create table orders (is_active boolean, is_delivered boolean, is_done boolean, is_paid boolean, price numeric(38,2), id bigint generated by default as identity, description varchar(255), primary key (id));
create table orders_dishes (dishes_id bigint not null, order_id bigint not null);
create table toppings (is_active boolean, price numeric(38,2), id bigint generated by default as identity, name varchar(255), primary key (id));
create table users (balance numeric(38,2), is_active boolean, id bigint generated by default as identity, name varchar(255), surname varchar(255), primary key (id));
create table users_orders (orders_id bigint not null unique, user_id bigint not null);
alter table if exists dishes_toppings add constraint FKa1wglqy19otnqqr7t5ar49l4l foreign key (toppings_id) references toppings;
alter table if exists dishes_toppings add constraint FKcec214p4977v3xo3gpt6bn0fc foreign key (dish_id) references dishes;
alter table if exists orders_dishes add constraint FKswlgp9qxu3ct1mkpivtsisdxl foreign key (dishes_id) references dishes;
alter table if exists orders_dishes add constraint FK6on9jka58uq379lr0ai2o7c6w foreign key (order_id) references orders;
alter table if exists users_orders add constraint FK2lnf5jw8p8q0ytkr8dp0mlx6 foreign key (orders_id) references orders;
alter table if exists users_orders add constraint FKms88pdhtsiuuusjpeij73f6df foreign key (user_id) references users;
