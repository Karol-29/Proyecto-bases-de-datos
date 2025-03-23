SELECT p.name AS producto, a.finalPrice AS precio
FROM Products p
JOIN AuctionByProduct ap ON p.id = ap.idProduct
JOIN Auctions a ON ap.idAuction = a.id
WHERE a.status IN ('A') 
ORDER BY a.finalPrice DESC
FETCH FIRST 1 ROW ONLY;

SELECT p.name AS producto, p.condition AS condicion, a.endTime AS fecha_cierre
FROM Products p
JOIN AuctionByProduct ap ON p.id = ap.idProduct
JOIN Auctions a ON ap.idAuction = a.id
WHERE a.status IN ('A')
ORDER BY a.endTime DESC
FETCH FIRST 1 ROW ONLY;

SELECT 
    p.name AS producto, 
    a.finalPrice AS precio_actual, 
    a.endTime AS fecha_cierre, 
    u.name AS mejor_postor
FROM Auctions a
JOIN AuctionByProduct ap ON a.id = ap.idAuction
JOIN Products p ON ap.idProduct = p.id
LEFT JOIN Bids b ON a.id = b.id 
LEFT JOIN Users u ON b.owner = u.id
WHERE a.status = 'A' 
AND b.amount = (SELECT MAX(amount) FROM Bids WHERE id = b.id) 
ORDER BY a.endTime ASC;

SELECT c.name, COUNT(*) AS cantidad_subastas
FROM Auctions a
JOIN AuctionByProduct abp ON a.id = abp.idAuction
JOIN Products p ON abp.idProduct = p.id
JOIN Categories c ON p.category = c.id
WHERE EXTRACT(MONTH FROM a.startTime) = 3
  AND EXTRACT(YEAR FROM a.startTime) = 2024
GROUP BY c.name
ORDER BY cantidad_subastas DESC
FETCH FIRST 1 ROW ONLY;

SELECT a.state, COUNT(*) AS cantidad_envios
FROM ToAddress t
JOIN Addresses a ON t.address = a.id
WHERE EXTRACT(MONTH FROM t.deliveryTime) = 3
  AND EXTRACT(YEAR FROM t.deliveryTime) = 2024
GROUP BY a.state
ORDER BY cantidad_envios DESC
FETCH FIRST 5 ROW ONLY;


