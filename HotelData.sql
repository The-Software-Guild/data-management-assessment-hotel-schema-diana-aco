

insert into guest (fName,lName,Address,City,State,Zip,Phone) VALUES
('Diana','Acostandei','Your Address','City','State','Zip','Phone'),
('Mack','Simmer','379 Old Shore Street,Council','Bluffs','IA','51501','(291) 553-0508'),
('Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK','99654','(478) 277-9632'),
('Duane' ,'Cullison','9662 Foxrun Lane','Harlingen','TX','78552','(308) 494-0198'),
('Karie' ,'Yang','9378 W. Augusta Ave.','West Deptford','NJ','8096','(214) 730-0298'),
 ('Aurore','Lipton','762 Wild Rose Street','Saginaw','MI','48601','(377) 507-0974'),
 ('Zachery' ,'Luechtefeld','7 Poplar Dr.','Arvada','CO','80003','(814) 485-2615'),
 ('Jeremiah','Pendergrass','70 Oakwood St','Zion','IL','60099','(279) 491-0960'),
 ('Walter','Holaway','7556 Arrowhead St.','Cumberland','RI','2864','(446) 396-6785'),
('Wilfred','Vise','77 West Surrey Street','Oswego','NY','13126','(834) 727-1001'),
('Maritza' ,'Tilton','939 Linda Rd.','Burke','VA','22015','(446) 351-6860'),
('Joleen' ,'Tison','87 Queen St.','Drexel Hill','PA','19026','(231) 893-2755');

-- select *
-- from guest;

insert into Roomtype (roomTypeDesc, price, standardOcc, maxOcc, extraPerson) Values
('Single',149.99,2,2,0),
('Double',174.99,2,4,10),
('Suite',399.99,3,8,20);

insert into ammenity (ammenityDesc) values
('microwave'),
('refrigerator'),
('jacuzzi'),
('oven');

insert into Room(roomId, roomTypeId, adaAccess) values(201, 2, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(202, 2, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(203, 2, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(204, 2, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(205, 1, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(206, 1, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(207, 1, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(208, 1, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(301, 2, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(302, 2, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(303, 2, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(304, 2, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(305, 1, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(306, 1, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(307, 1, 0);
insert into Room(roomId, roomTypeId, adaAccess) values(308, 1, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(401, 3, 1);
insert into Room(roomId, roomTypeId, adaAccess) values(402, 3, 1);

-- insert into reservation (guestId,roomId,adults, children, startDate,endDate, totalRoomCost) VALUES
-- ('1','1','1','0','2023-02-02','2023-02-04','299.98'); --
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (308, 2,  1, 0, str_to_date('02/02/2023', '%m/%d/%Y'),  str_to_date('02/04/2023', '%m/%d/%Y'),	299.98);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (203, 3,  2, 1, str_to_date('02/05/2023', '%m/%d/%Y'),  str_to_date('02/10/2023', '%m/%d/%Y'),	999.95);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (305, 4,  2, 0, str_to_date('02/22/2023', '%m/%d/%Y'),  str_to_date('02/24/2023', '%m/%d/%Y'), 349.98);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (201, 5,  2, 2, str_to_date('03/06/2023', '%m/%d/%Y'),  str_to_date('03/07/2023', '%m/%d/%Y'),	199.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (307, 1,  1, 1, str_to_date('03/17/2023', '%m/%d/%Y'),  str_to_date('03/20/2023', '%m/%d/%Y'), 524.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (302, 6,  3, 0, str_to_date('03/18/2023', '%m/%d/%Y'),  str_to_date('03/23/2023', '%m/%d/%Y'), 924.95);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (202, 7,  2, 2, str_to_date('03/29/2023', '%m/%d/%Y'),  str_to_date('03/31/2023', '%m/%d/%Y'), 349.98);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (304, 8,  2, 0, str_to_date('03/31/2023', '%m/%d/%Y'),  str_to_date('04/05/2023', '%m/%d/%Y'),	874.95);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (301, 9,  1, 0, str_to_date('04/09/2023', '%m/%d/%Y'),  str_to_date('04/13/2023', '%m/%d/%Y'), 799.96);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (207, 10, 1, 1, str_to_date('04/23/2023', '%m/%d/%Y'),  str_to_date('04/24/2023', '%m/%d/%Y'), 174.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (401, 11, 2, 4, str_to_date('05/30/2023', '%m/%d/%Y'),  str_to_date('06/02/2023', '%m/%d/%Y'),	1199.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (206, 12, 2, 0, str_to_date('06/10/2023', '%m/%d/%Y'),  str_to_date('06/14/2023', '%m/%d/%Y'), 599.96);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (208, 12, 1, 0, str_to_date('06/10/2023', '%m/%d/%Y'),  str_to_date('06/14/2023', '%m/%d/%Y'), 599.96);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (304, 6,  3, 0, str_to_date('06/17/2023', '%m/%d/%Y'),  str_to_date('06/18/2023', '%m/%d/%Y'), 184.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (205, 1,  2, 0, str_to_date('06/28/2023', '%m/%d/%Y'),  str_to_date('07/02/2023', '%m/%d/%Y'),	699.96);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (204, 9,  3, 1, str_to_date('07/13/2023', '%m/%d/%Y'),  str_to_date('07/14/2023', '%m/%d/%Y'), 184.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (401, 10, 4, 2, str_to_date('07/18/2023', '%m/%d/%Y'),  str_to_date('07/21/2023', '%m/%d/%Y'), 1259.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (303, 3,  2, 1, str_to_date('07/28/2023', '%m/%d/%Y'),  str_to_date('07/29/2023', '%m/%d/%Y'), 199.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (305, 3,  1, 0, str_to_date('08/30/2023', '%m/%d/%Y'),  str_to_date('09/01/2023', '%m/%d/%Y'),	349.98);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (208, 2,  2, 0, str_to_date('09/16/2023', '%m/%d/%Y'),  str_to_date('09/17/2023', '%m/%d/%Y'), 149.99);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (203, 5,  2, 2, str_to_date('09/13/2023', '%m/%d/%Y'),  str_to_date('09/15/2023', '%m/%d/%Y'), 399.98);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (401, 4,  2, 2, str_to_date('11/22/2023', '%m/%d/%Y'),  str_to_date('11/25/2023', '%m/%d/%Y'), 1199.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (206, 2,  2, 0, str_to_date('11/22/2023', '%m/%d/%Y'),  str_to_date('11/25/2023', '%m/%d/%Y'), 449.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (301, 2,  2, 2, str_to_date('11/22/2023', '%m/%d/%Y'),  str_to_date('11/25/2023', '%m/%d/%Y'), 599.97);
insert into Reservation(roomId, guestId, adults, children, startDate, endDate, totalRoomCost) values (302, 11, 2, 0, str_to_date('12/24/2023', '%m/%d/%Y'),  str_to_date('12/28/2023', '%m/%d/%Y'), 699.96);

insert into roomammenity(roomId, ammenityId) values(201,1),(201,3);
insert into roomammenity(roomId, ammenityId) values(202,2);	
insert into roomammenity(roomId, ammenityId) values(203,1), (203,3);	
insert into roomammenity(roomId, ammenityId) values(204,2);	
insert into roomammenity(roomId, ammenityId) values(205,1), (205,2), (205,3);
insert into roomammenity(roomId, ammenityId) values(206,1), (206,2);	
insert into roomammenity(roomId, ammenityId) values(207,1), (207,2), (207,3);
insert into roomammenity(roomId, ammenityId) values(208,1), (208,2);	
insert into roomammenity(roomId, ammenityId) values(301,1), (301,3);	
insert into roomammenity(roomId, ammenityId) values(302,2);	
insert into roomammenity(roomId, ammenityId) values(303,1), (303,3);
insert into roomammenity(roomId, ammenityId) values(304,2);	
insert into roomammenity(roomId, ammenityId) values(305,1), (305,2), (305,3);
insert into roomammenity(roomId, ammenityId) values(306,1), (306,2);	
insert into roomammenity(roomId, ammenityId) values(307,1), (307,2), (307,3);
insert into roomammenity(roomId, ammenityId) values(308,1), (308,2);	
insert into roomammenity(roomId, ammenityId) values(401,1), (401,2), (401,4);
insert into roomammenity(roomId, ammenityId) values(402,1), (401,2), (401,4);



