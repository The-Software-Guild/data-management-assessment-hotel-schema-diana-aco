-- 1. returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates-- 

Use HotelSchema;

Select 
concat(g.fName," ", g.lName) as guestName,
roomId,
startDate,
endDate

From reservation r
Join guest g on r.guestId = g.guestId

where month(endDate) = 07;

-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation. --
 
 Use HotelSchema; 
SELECT
concat(g.fName," ", g.lName) as guestName,
r.startDate,
r.endDate,
rm.roomId,
ra.ammenityId
From guest g
join reservation r on g.guestId =r.guestId
join room rm on r.roomId = rm.roomId
join roomammenity ra on rm.roomId= ra.roomId
where ammenityId= 3
;

-- 3. Write a query that returns all the rooms reserved for a specific guest, 
-- including the guest's name, the room(s) reserved, the starting date of the reservation, 
-- and how many people were included in the reservation. (Choose a guest's name from the existing data.) --

Use HotelSchema;
SELECT 
concat(g.fName," ", g.lName) as guestName,
roomId,
startDate,
adults,
children
FROM guest g 
JOIN reservation r  ON  g.guestID+ r.guestId
Where concat(g.fName," ", g.lName)= 'Mack Simmer';

-- 4.Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation.
--  The results should include all rooms, whether or not there is a reservation associated with the room. --
-- cost per room doesnt include additional person fee or ammenity fee for jacuzzi additional joins and if statements needed-
Use HotelSchema;
SELECT 
rm.roomId,
reservationId,
totalRoomCost,
price,
format(price * datediff(endDate, startDate),2) as cost

from reservation res
right outer join room rm using (roomId)
join roomtype rt using(roomTypeId);

-- 5. Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023.
Use HotelSchema;
SELECT 
reservation.roomId,
roomtype.maxOcc
FROM reservation 
JOIN  room ON reservation.roomId = room.roomId
JOIN roomtype on room.roomTypeId = roomtype.roomTypeId
WHERE month (startDate) = 04
and maxOcc>= 3
and maxOcc >=3;
 

-- 7.Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)

use hotelschema;
SELECT 
    fName, 
    lName, 
    address, 
    phone
FROM guest
WHERE phone = '(291) 553-0508';

