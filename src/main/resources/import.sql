--
-- JBoss, Home of Professional Open Source
-- Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
-- contributors by the @authors tag. See the copyright.txt in the
-- distribution for a full listing of individual contributors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- http://www.apache.org/licenses/LICENSE-2.0
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- You can use this file to load seed data into the database using SQL statements
insert into Member (id, name, email, phone_number) values (1, 'Joao Santana', 'jao.santna@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (2, 'Jose Silva', 'jose@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (3, 'Luiz Cardoso', 'luiz@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (4, 'Maria Goncalvez', 'maria@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (5, 'Carla Souza', 'carla@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (6, 'Joana Teles', 'joana@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (7, 'Cristina Teles', 'cirstina@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (8, 'Arnaldo Filho', 'arnaldo@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (9, 'Ana Julia', 'ana@gmail.com', '2125551212');
insert into Member (id, name, email, phone_number) values (10, 'Roberto Carlos', 'roberto@gmail.com', '2125551212');

insert into Event (id, name, start_date, stop_date) values (1, 'Retiro de Solteiros 2019', DATE '2019-07-15', DATE '2019-07-17');
insert into Event (id, name, start_date, stop_date) values (2, 'Retiro de Casados 2019', DATE '2019-09-01', DATE '2019-09-02');
insert into Event (id, name, start_date, stop_date) values (3, 'Retiro de Líderes 2019', DATE '2019-07-04', DATE '2019-07-06');
insert into Event (id, name, start_date, stop_date) values (4, 'Retiro de Discipuladores 2019', DATE '2019-11-01', DATE '2019-11-03');
insert into Event (id, name, start_date, stop_date) values (5, 'Retiro de Mulheres 2019', DATE '2019-07-07', DATE '2019-07-08');

insert into Ticket (id, count_number, price, description, event_id) values (1, 5, 120.0, 'Acomodacao em dormitorio', 1);
insert into Ticket (id, count_number, price, description, event_id) values (2, 4, 180.0, 'Acomodacao em apartamento', 1);
insert into Ticket (id, count_number, price, description, event_id) values (3, 5, 120.0, 'Acomodacao em dormitorio', 2);
insert into Ticket (id, count_number, price, description, event_id) values (4, 4, 180.0, 'Acomodacao em apartamento', 2);
insert into Ticket (id, count_number, price, description, event_id) values (5, 5, 120.0, 'Acomodacao em dormitorio', 3);
insert into Ticket (id, count_number, price, description, event_id) values (6, 4, 180.0, 'Acomodacao em apartamento', 3);
insert into Ticket (id, count_number, price, description, event_id) values (7, 5, 120.0, 'Acomodacao em dormitorio', 4);
insert into Ticket (id, count_number, price, description, event_id) values (8, 4, 180.0, 'Acomodacao em apartamento', 4);
insert into Ticket (id, count_number, price, description, event_id) values (9, 5, 120.0, 'Acomodacao em dormitorio', 5);
insert into Ticket (id, count_number, price, description, event_id) values (10, 4, 180.0, 'Acomodacao em apartamento', 5);

insert into Subscription (id, member_id, ticket_id, date, status) values (1, 1, 1, DATE '2019-03-10', 0);
