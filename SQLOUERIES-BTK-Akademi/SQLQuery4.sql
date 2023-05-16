SELECT
DATEPART(MONTH,O.DATE_)AS AY,
CASE WHEN DATEPART(MONTH,O.DATE_)=1 THEN 'OCAK'
	 WHEN DATEPART(MONTH,O.DATE_)=2 THEN 'SUBAT'
	 WHEN DATEPART(MONTH,O.DATE_)=3 THEN 'MART'
	 WHEN DATEPART(MONTH,O.DATE_)=4 THEN 'N�SAN'
	 WHEN DATEPART(MONTH,O.DATE_)=5 THEN 'MAYIS'
	 WHEN DATEPART(MONTH,O.DATE_)=6 THEN 'HAZ�RAN'
	 WHEN DATEPART(MONTH,O.DATE_)=7 THEN 'TEMMUZ'
	 WHEN DATEPART(MONTH,O.DATE_)=8 THEN 'A�USTOS'
	WHEN DATEPART(MONTH,O.DATE_)=9 THEN 'EYLUL'
    WHEN DATEPART(MONTH,O.DATE_)=10 THEN 'EK�M'
	WHEN DATEPART(MONTH,O.DATE_)=11 THEN 'KASIM'
	WHEN DATEPART(MONTH,O.DATE_)=12 THEN 'ARALIK'
	END AS AYADI,
 SUM(OD.LINETOTAL) AS TOPLAMSATIS_TUTARI,
 SUM(OD.AMOUNT) AS TOPLAMSIPARI_MIKTAR,
 COUNT(OD.ID) AS TOPLAMSIPARISSAYISI
	
	FROM ORDERS O
	INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON A.CITYID=CT.ID
	INNER JOIN TOWNS T ON A.TOWNID=T.ID
	INNER JOIN DISTRICTS D ON D.ID =A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID =O.ID
	INNER JOIN INVOICES I ON I.ORDERID =O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

	GROUP BY DATEPART(MONTH,O.DATE_), DATEPART(YEAR,O.DATE_)
	ORDER BY DATEPART(MONTH,O.DATE_), DATEPART(YEAR,O.DATE_)