INSERT INTO Users (id, name, mail, address) 
VALUES (NULL, 'Juan Perez', 'juanperez@example.com', 1);
INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, idDelivery) 
VALUES (20, NULL, 500, 'Active', '2024-03-20 10:00:00', '2024-03-25 10:00:00', 1, 1, 2, 3);
INSERT INTO Payments (id, payment_date, method) 
VALUES (5, '2024-03-15', NULL);

INSERT INTO Users (id, name, mail, address) VALUES (3, 'Carlos Gomez', 'carlosgomez', 789);
INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, Address, idDelivery)
VALUES (1, 10000, 15000, 'H', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 1, 1, 2, 1, 1);
INSERT INTO Bids (id, amount, status, owner) VALUES (3, 15001, 'D', 3);

INSERT INTO Users (id, name, mail, address) VALUES (4, 'Carlos Gomez', 'carlosgomez@example.com', 2);
INSERT INTO Categories (id, name, description) VALUES (4, 'Hogar', 'Electrodomésticos y muebles');

INSERT INTO Users (id, name, mail, address) 
VALUES (1, 'Carlos Gómez', 'carlos@example.com', 2);
INSERT INTO Addresses (id, country, city, state) 
VALUES (2, 'Argentina', 'Buenos Aires', 'Buenos Aires');
INSERT INTO Products (id, name, condition, url, category) 
VALUES (3, 'Smartphone', 'New', 'http://example.com/phone', 3);

INSERT INTO Auctions (id, initialPrice, finalPrice, status, startTime, endTime, Payment, Organizer, Winner, Address, idDelivery)
VALUES (5, 10000, 15000, 'A', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 1, 1, 2, 7, 1);
INSERT INTO Bids (id, amount, status, owner) VALUES (7, 5000, 'A', 7);
INSERT INTO Users (id, name, mail, address) VALUES (5, 'Juan Perez', 'juaz@gmail.com', 123);
