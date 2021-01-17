USE [METRO Cash&Carry];
GO

/*
	Select all sold products and sort them by sold pieces
*/

SELECT
	p.Product,
	p.PiecePrice,
	p.KgPrice,
	SUM(sp.Pieces) AS [Sold pieces],
	SUM(sp.Kg) AS [Sold kg's]
FROM
	Products AS p
	INNER JOIN SoldProducts AS sp ON sp.Product_ID = p.ID_Product
GROUP BY
	p.Product,
	p.PiecePrice,
	p.KgPrice
ORDER BY
	[Sold pieces] DESC;
GO
