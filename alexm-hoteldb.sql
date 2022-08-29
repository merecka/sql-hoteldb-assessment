DROP DATABASE IF EXISTS alexmhoteldb;

CREATE DATABASE alexmhoteldb;

USE alexmhoteldb;

DROP TABLE IF EXISTS Room;
CREATE TABLE Room (
    RoomNumber SMALLINT PRIMARY KEY NOT NULL,
    RoomType VARCHAR(10) NOT NULL,
    AdaAccessible BOOLEAN NOT NULL DEFAULT 0,
    StandardOccupancy TINYINT NOT NULL,
    MaximumOccupancy TINYINT NOT NULL,
    BasePrice DECIMAL(5,2) NOT NULL,
    ExtraPerson TINYINT NOT NULL
);

DROP TABLE IF EXISTS Guest;
CREATE TABLE Guest (
    GuestId INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    FirstName VARCHAR(15) NOT NULL,
    LastName VARCHAR(15) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(15) NOT NULL,
    State VARCHAR(2) NOT NULL,
    ZipCode CHAR(5) NOT NULL,
    PhoneNumber CHAR(14) NOT NULL
);

DROP TABLE IF EXISTS Amenities;
CREATE TABLE Amenities (
    AmenityName VARCHAR(15) PRIMARY KEY NOT NULL,
    ExtraCost Decimal(4,2) NOT NULL
);

DROP TABLE IF EXISTS Reservation;
CREATE TABLE Reservation (
    ReservationId INT PRIMARY KEY AUTO_INCREMENT,
    GuestId INT NOT NULL,
    Adults TINYINT NOT NULL,
    Children TINYINT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalRoomCost DECIMAL(12,2) NOT NULL,
	FOREIGN KEY fk_Reservation_Guest (GuestId)
	REFERENCES Guest(GuestId)
);

DROP TABLE IF EXISTS RoomAmenities;
CREATE TABLE RoomAmenities (
    RoomNumber SMALLINT NOT NULL,
    AmenityName VARCHAR(15) NOT NULL,
	PRIMARY KEY (RoomNumber, AmenityName),
	FOREIGN KEY fk_RoomAmenities_RoomNumber (RoomNumber)
	REFERENCES Room(RoomNumber),
    FOREIGN KEY fk_RoomAmenities_AmenityName (AmenityName)
        REFERENCES Amenities(AmenityName)
);

DROP TABLE IF EXISTS RoomReservation;
CREATE TABLE RoomReservation (
	RoomReservationId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ReservationId INT NOT NULL,
    RoomNumber SMALLINT NOT NULL,
	FOREIGN KEY fk_RoomReservation_RoomNumber (RoomNumber)
	REFERENCES Room(RoomNumber),
    FOREIGN KEY fk_RoomReservation_ReservationId (ReservationId)
        REFERENCES Reservation(ReservationId)
);