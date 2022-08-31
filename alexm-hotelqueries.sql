USE alexmhoteldb;


/* Write a query that returns a list of reservations that end in July 2023, including the name of the guest, 
the room number(s), and the reservation dates. */
SELECT FirstName, LastName, RoomNumber, StartDate, EndDate from reservation 
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
INNER JOIN guest ON reservation.GuestId = guest.GuestId
WHERE EndDate >= '2023-07-01' AND EndDate <= '2023-07-31';
/* Alex	Merecka	205	2023-06-28	2023-07-02
Walter	Holaway	204	2023-07-13	2023-07-14
Wilfred	Vise	401	2023-07-18	2023-07-21
Bettyann	Seery	303	2023-07-28	2023-07-29 */

/* Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, 
the room number, and the dates of the reservation. */
SELECT FirstName, LastName, RoomReservation.RoomNumber, StartDate, EndDate, amenities.AmenityName FROM reservation 
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
INNER JOIN guest ON reservation.GuestId = guest.GuestId
INNER JOIN room ON roomreservation.RoomNumber = room.RoomNumber
INNER JOIN roomamenities ON room.RoomNumber = roomamenities.RoomNumber
INNER JOIN amenities ON amenities.AmenityName = roomamenities.AmenityName
WHERE amenities.AmenityName = 'Jacuzzi';
/* Karie	Yang	201	2023-03-06	2023-03-07	Jacuzzi
Bettyann	Seery	203	2023-02-05	2023-02-10	Jacuzzi
Karie	Yang	203	2023-09-13	2023-09-15	Jacuzzi
Alex	Merecka	205	2023-06-28	2023-07-02	Jacuzzi
Wilfred	Vise	207	2023-04-23	2023-04-24	Jacuzzi
Walter	Holaway	301	2023-04-09	2023-04-13	Jacuzzi
Mack	Simmer	301	2023-11-22	2023-11-25	Jacuzzi
Bettyann	Seery	303	2023-07-28	2023-07-29	Jacuzzi
Duane	Cullison	305	2023-02-22	2023-02-24	Jacuzzi
Bettyann	Seery	305	2023-08-30	2023-09-01	Jacuzzi
Alex	Merecka	307	2023-03-17	2023-03-20	Jacuzzi */

/* Write a query that returns all the rooms reserved for a specific guest, including the guest's name, 
the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation.
 (Choose a guest's name from the existing data.) */
SELECT FirstName, LastName, RoomReservation.RoomNumber, StartDate, Adults, Children FROM reservation
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
INNER JOIN guest ON reservation.GuestId = guest.GuestId
INNER JOIN room ON roomreservation.RoomNumber = room.RoomNumber
WHERE FirstName = "Joleen";
/* Joleen	Tison	206	2023-06-10	2	0
Joleen	Tison	208	2023-06-10	1	0 */

/* Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
The results should include all rooms, whether or not there is a reservation associated with the room. */
SELECT Room.RoomNumber, Reservation.ReservationId, TotalRoomCost FROM reservation
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
RIGHT JOIN room on roomreservation.RoomNumber = room.RoomNumber;
/* 201	4	199.99
202	7	349.98
203	2	999.95
203	21	399.98
204	16	184.99
205	15	699.96
206	12	599.96
206	23	449.97
207	10	174.99
208	13	599.96
208	20	149.99
301	9	799.96
301	24	599.97
302	6	924.95
302	25	699.96
303	18	199.99
304	14	184.99
305	3	349.98
305	19	349.98
306		
307	5	524.97
308	1	299.98
401	11	1199.97
401	17	1259.97
401	22	1199.97
402		 */

/* Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in 
April 2023. */
SELECT Room.RoomNumber, MaximumOccupancy, StartDate, EndDate FROM reservation
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
INNER JOIN room on roomreservation.RoomNumber = room.RoomNumber
WHERE StartDate BETWEEN '2023-04-01' AND '2023-04-30' AND MaximumOccupancy >= 3 OR EndDate BETWEEN '2023-04-01' AND '2023-04-30' AND MaximumOccupancy >= 3 ;
/* 301	4	2023-04-09	2023-04-13 */

/* Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting 
with the guest with the most reservations and then by the guest's last name. */
SELECT FirstName, LastName, COUNT(*) TotalReservations FROM reservation
INNER JOIN roomreservation ON reservation.ReservationId = roomreservation.ReservationId
INNER JOIN guest ON guest.GuestId = reservation.GuestId
GROUP BY guest.GuestId
ORDER BY COUNT(*) DESC, LastName ASC;
/* Mack	Simmer	4
Bettyann	Seery	3
Duane	Cullison	2
Walter	Holaway	2
Aurore	Lipton	2
Alex	Merecka	2
Maritza	Tilton	2
Joleen	Tison	2
Wilfred	Vise	2
Karie	Yang	2
Zachery	Luechtefeld	1 */

/* Write a query that displays the name, address, and phone number of a guest based on their phone number.
 (Choose a phone number from the existing data.) */
SELECT FirstName, LastName, Street, City, State, ZipCode, PhoneNumber from guest
WHERE PhoneNumber = '308-494-0198';
/* Duane	Cullison	9662 Foxrun Lane	Harlingen	TX	78552	308-494-0198 */

