CREATE TABLE Penalties (
    id INT NOT NULL,
    amount NUMBER(9) NOT NULL,
    reason VARCHAR2(50) NOT NULL,
    type CHAR(1) NOT NULL,
    idBid INT,
    idAuction INT,
    owner INT NOT NULL
);

CREATE TABLE Bids (
    id INT NOT NULL,
    amount NUMBER(9) NOT NULL,
    status CHAR(1) NOT NULL,
    owner INT NOT NULL
);

CREATE TABLE BidsByAuctions (
    idBid INT NOT NULL,
    idAuction INT NOT NULL
);

CREATE TABLE Auctions (
    id INT NOT NULL,
    initialPrice NUMBER(9) NOT NULL,
    finalPrice NUMBER(9) NOT NULL,
    status CHAR(1) NOT NULL,
    startTime TIMESTAMP NOT NULL,
    endTime TIMESTAMP NOT NULL,
    Payment INT NOT NULL,
    Organizer INT NOT NULL,
    Winner INT  NOT NULL,
    Address INT,
    idDelivery INT NOT NULL
);

CREATE TABLE Payments (
    id INT NOT NULL,
    paymentDate DATE NOT NULL,
    method VARCHAR2(50) NOT NULL
);

CREATE TABLE Users (
    id INT NOT NULL,
    name VARCHAR2(255) NOT NULL,
    mail VARCHAR2(255) NOT NULL,
    address INT NOT NULL
);

CREATE TABLE PhoneNumbers (
    idUser INT NOT NULL,
    phoneNumber VARCHAR2(10) NOT NULL
);

CREATE TABLE Registered (
    id INT NOT NULL,
    registeredDate DATE NOT NULL,
    password VARCHAR2(255) NOT NULL
);

CREATE TABLE Addresses (
    id INT NOT NULL,
    country VARCHAR2(100) NOT NULL,
    city VARCHAR2(100) NOT NULL,
    state VARCHAR2(100) NOT NULL
);

CREATE TABLE TypesDelivery (
    id INT NOT NULL,
    method VARCHAR2(50) NOT NULL
);

CREATE TABLE ToAddress (
    id INT NOT NULL,
    shippingCost NUMBER(9) NOT NULL,
    deliveryTime DATE NOT NULL,
    address INT NOT NULL
);

CREATE TABLE PickUp (
    id INT NOT NULL,
    pickUpDate DATE NOT NULL
);

CREATE TABLE Products (
    id INT NOT NULL,
    name VARCHAR2(255) NOT NULL,
    condition VARCHAR2(50) NOT NULL,
    url VARCHAR2(500) NOT NULL,
    category INT NOT NULL
);

CREATE TABLE Categories (
    id INT NOT NULL,
    name VARCHAR2(100) NOT NULL,
    description VARCHAR2(200)
);

CREATE TABLE AuctionByProduct (
    idProduct INT NOT NULL,
    idAuction INT NOT NULL
);
