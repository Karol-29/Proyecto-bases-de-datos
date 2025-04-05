--Poblar Categories.
INSERT INTO Categories (id, name, description) VALUES (1, 'Electrónica', 'Productos electrónicos');
INSERT INTO Categories (id, name, description) VALUES (2, 'Hogar', 'Electrodomésticos y muebles');
INSERT INTO Categories (id, name, description) VALUES (3, 'Moda', 'Ropa y accesorios');

--Poblar Addresses
INSERT INTO Addresses (id, country, city, state) VALUES (1, 'Colombia', 'Bogotá', 'Cundinamarca');
INSERT INTO Addresses (id, country, city, state) VALUES (2, 'Colombia', 'Medellín', 'Antioquia');
INSERT INTO Addresses (id, country, city, state) VALUES (3, 'Colombia', 'Cali', 'Valle del Cauca');

--Poblar TypesDelivery
INSERT INTO TypesDelivery (id, method) VALUES (1, 'Envío estándar');
INSERT INTO TypesDelivery (id, method) VALUES (2, 'Envío express');
INSERT INTO TypesDelivery (id, method) VALUES (3, 'Recogida en tienda');

--Poblar PickUp
INSERT INTO PickUp (id, pickupDate) VALUES (1, TO_DATE('2024-03-12', 'YYYY-MM-DD'));
INSERT INTO PickUp (id, pickupDate) VALUES (2, TO_DATE('2024-03-17', 'YYYY-MM-DD'));
INSERT INTO PickUp (id, pickupDate) VALUES (3, TO_DATE('2024-03-22', 'YYYY-MM-DD'));

--Poblar ToAddress
INSERT INTO ToAddress (id, shippingCost, deliveryTime, address) VALUES (1, 5000, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 1);
INSERT INTO ToAddress (id, shippingCost, deliveryTime, address) VALUES (2, 10000, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 2);
INSERT INTO ToAddress (id, shippingCost, deliveryTime, address) VALUES (3, 15000, TO_DATE('2024-03-22', 'YYYY-MM-DD'), 3);

--Poblar Payments
INSERT INTO Payments (id, paymentDate, method) VALUES (1, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 'Tarjeta');
INSERT INTO Payments (id, paymentDate, method) VALUES (2, TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Efectivo');
INSERT INTO Payments (id, paymentDate, method) VALUES (3, TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'Transferencia');

--Poblar Products
INSERT INTO Products (id, name, condition, url, category) VALUES (1, 'Laptop', 'Nuevo', 'http://example.com/laptop', 1);
INSERT INTO Products (id, name, condition, url, category) VALUES (2, 'Teléfono', 'Usado', 'http://example.com/telefono', 2);
INSERT INTO Products (id, name, condition, url, category) VALUES (3, 'Cámara', 'Refurbished', 'http://example.com/camara', 3);

--Poblar Users 
INSERT INTO Users (id, name, mail, address) VALUES (1, 'Juan Perez', 'juanperez@example.com', 1);
INSERT INTO Users (id, name, mail, address) VALUES (2, 'Maria Lopez', 'marialopez@example.com', 2);
INSERT INTO Users (id, name, mail, address) VALUES (3, 'Carlos Gomez', 'carlosgomez@example.com', 3);

--Poblar Bids
INSERT INTO Bids (id, amount, status, owner) VALUES (1, 5000, 'A', 1);
INSERT INTO Bids (id, amount, status, owner) VALUES (2, 10000, 'E', 2);
INSERT INTO Bids (id, amount, status, owner) VALUES (3, 15000, 'D', 3);

--Poblar Auctions
INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, Address, idDelivery)
VALUES (1, 10000, 15000, 'A', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 1, 1, 2, 1, 1);

INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, Address, idDelivery)
VALUES (2, 20000, 25000, 'B', TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), 2, 2, 3, 2, 2);

INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, Address, idDelivery)
VALUES (3, 30000, 35000, 'C', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'), 3, 3, 1, 3, 3);

--Poblar BidsByAuctions
INSERT INTO BidsByAuctions (idBid, idAuction) VALUES (1, 1);
INSERT INTO BidsByAuctions (idBid, idAuction) VALUES (2, 2);
INSERT INTO BidsByAuctions (idBid, idAuction) VALUES (3, 3);

--Poblar Penalties
INSERT INTO Penalties (id, amount, reason, type, idBid, idAuction, owner) VALUES (1, 1000, 'Retraso en pago', 'A', 1, 1, 1);
INSERT INTO Penalties (id, amount, reason, type, idBid, idAuction, owner) VALUES (2, 2000, 'Incumplimiento', 'B', 2, 2, 2);
INSERT INTO Penalties (id, amount, reason, type, idBid, idAuction, owner) VALUES (3, 3000, 'Fraude', 'C', 3, 3, 3);

--Poblar PhoneNumbers
INSERT INTO PhoneNumbers (idUser, phoneNumber) VALUES (1, '3001234567');
INSERT INTO PhoneNumbers (idUser, phoneNumber) VALUES (2, '3107654321');
INSERT INTO PhoneNumbers (idUser, phoneNumber) VALUES (3, '3209876543');

--Poblar Registered
INSERT INTO Registered (id, registeredDate, password) VALUES (1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'pass123');
INSERT INTO Registered (id, registeredDate, password) VALUES (2, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'pass456');
INSERT INTO Registered (id, registeredDate, password) VALUES (3, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'pass789');

--Poblar AuctionByProduct
INSERT INTO AuctionByProduct (idProduct, idAuction) VALUES (1, 1);
INSERT INTO AuctionByProduct (idProduct, idAuction) VALUES (2, 2);
INSERT INTO AuctionByProduct (idProduct, idAuction) VALUES (3, 3);







