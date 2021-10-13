SELECT
--O.ID AS SIPARISID,
--O.DATE_ AS SIPARISTARİHİ,
--I.DATE_ AS FATURATARİHİ,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)),
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMATESLIMATSURESİ_SAAT
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

	--SELECT  DATEDIFF(MINUTE,'2019-02-05 23:56:58.000','2019-02-06 10:54:58.000')