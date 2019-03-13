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

insert into Event (id, name, start_date, stop_date) values (1, 'Retiro de Solteiros 2019', DATE '2019-07-15', DATE '2019-07-17');

insert into Ticket (id, count_number, price, description, event_id) values (1, 5, 120.0, 'Acomodacao em dormitorio', 1);
insert into Ticket (id, count_number, price, description, event_id) values (2, 4, 180.0, 'Acomodacao em apartamento', 1);

insert into Subscription (id, count_number, member_id, ticket_id, date) values (1, 1, 1, DATE '2019-03-10');
