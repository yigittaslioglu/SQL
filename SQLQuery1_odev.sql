CREATE TRIGGER TRG_Silinen_kontrol
ON [Sipariþ Ayrýntýlarý]
AFTER DELETE
AS
BEGIN
    -- Sipariþ No'su artýk Sipariþ Ayrýntýlarý tablosunda olmayan satýrlarý kontrol et
    DELETE FROM [Sipariþler]
    WHERE [Sipariþ No] IN (
        SELECT DISTINCT d.[Sipariþ No]
        FROM deleted as d
        LEFT JOIN [Sipariþ Ayrýntýlarý] as sa
        ON d.[Sipariþ No] = sa.[Sipariþ No]
        WHERE sa.[Sipariþ No] IS NULL
    )
END

-- üstteki gptnin yazdýðý.
-- hocanýn istediði þey de bu;

/*Northwind veritabanýnda “Sipariþ Ayrýntýlarý” tablosundan veri silindiðinde sipariþler 
ve sipariþ ayrýntýlarý tablolarý arasýndaki veri tutarlýlýðý saðlamak amacýyla bir trigger 
oluþturmanýz beklenmektedir. *** Tetikleyiciniz “Sipariþ ayrýntýlarý” tablosundan silinen 
satýr(lar)daki [sipariþ No] alanýný kontrol ederek eðer “Sipariþ Ayrýntýlarý“ tablosunda ilgili 
[sipariþ no] deðer(ler)inden hiç kalmamýþ ise “Sipariþler” tablosundan ilgili satýrý da silmesi 
için programlanacaktýr.*/

select * from [Sipariþ Ayrýntýlarý]
select * from Sipariþler


--BENÝM TRÝGERE GELELÝM ÞÝMDÝ DE.

Create trigger trg_silinen_kontrol
on [Sipariþ Ayrýntýlarý]


select * from [Sipariþ Ayrýntýlarý]
select * from Sipariþler

delete from [Sipariþ Ayrýntýlarý] where [Sipariþ No] = 80

select * from [Sipariþ Ayrýntýlarý]
select * from Sipariþler

--*******************************************
--kodu inner join ile de yazacaðým iþte kod,
CREATE TRIGGER TRG_DeleteOrderIfNoDetails1
ON [Sipariþ Ayrýntýlarý]
AFTER DELETE
AS
BEGIN
    -- Sipariþ No'su artýk Sipariþ Ayrýntýlarý tablosunda olmayan satýrlarý kontrol et
    DELETE FROM [Sipariþler]
    WHERE [Sipariþ No] IN (
        SELECT d.[Sipariþ No]
        FROM DELETED d
        INNER JOIN [Sipariþler] s
        ON d.[Sipariþ No] = s.[Sipariþ No]
        WHERE NOT EXISTS (
            SELECT 1
            FROM [Sipariþ Ayrýntýlarý] sa
            WHERE sa.[Sipariþ No] = d.[Sipariþ No]
        )
    );
END;

/*1. SORUDAKÝ KOD ÇALIÞIYOR OLMASI GERELTÝÐÝ GÝBÝ ÇALIÞIYOR 2. SORUYA GEÇÝYORUM VE ÜZERÝNDE SONRA GELÝÞTÝRME YAPABÝLÝRÝM.*/

--*******************************************************************************


-- 2. SORU 
/*
/*MS SQL ÖDEV ÝÇÝN ARAÞTIRILMASI ÝSTENEN KONULAR:
1)RANK 
2)NTILE
3)DENSE_RANK
4)ROW_NUMBER 
 Bu soru Sql Server sorgularýnda dereceleme (Ranking) iþlevleri ile ilgilidir. RANK, NTILE, 
DENSE_RANK, ROW_NUMBER gibi komutlarýn çalýma þekillerini ve yazým kurallarýný yazýnýz ve 
bu komutlarý Northwind veritabanýnda kullanarak deneyimleyiniz. Oluþturduðunuz 
sorgularý ve sonuçlarýný yorumlayarak ödevinize eklemenizi bekliyorum.  Size örnek 
olmasý bakýmýndan Northwind veritabanýnda müþteriler, iller ve cirolarla ilgili yapýlan 
sýralamalarý kullanabilirsiniz.*/
*/

/*RANK komutu: Ranking fonksiyonlarý sýralama iþlevinde satýrlara sýra numarasý vermek için kullanýlan fonksiyonlardýr.
rank iþlevi kullanýlýrken sýralama yapýlýr ancak ayný deðerlerde iki veri varsa ikisine ayný sýra numarasýný verir. buna ek olarak ayný sýra numarasýný
verdiði sayý kadar sýra numarasýný atlatarak devam ettirir. bu aþamada sýra numarasýnda bir sýçrama iþlevi olur. örn:
maaþ  sýra no
1000    1
2000    2
2000    2
3000    4
þeklinde sýralama örneði verilebilir.

ek olarak rank ile over ve partition by komutlarý kullanýlmaktadýr. rank kullanýlýrken select ve from ile kullanýlacak tablolar seçilir. sonrasýnda
rank getirilir ve nasýl kullanýlacaksa o þekilde yazýlýr ve sýralanýr.*/

SELECT ÇalýþanID, Maaþ,
    RANK() OVER (ORDER BY Maaþ DESC) AS Sýra
FROM Çalýþanlar;

select No, [Sipariþ No],
	(RANK() over(Order by [Sipariþ No])) as sýra
from [Sipariþ Ayrýntýlarý] /*hocanýn dediði sýralamaya göre düzeltilecek. sadece çalýþtýklarý görüldü.*/
--*******************************************************************************


/*NTILE komutu, sqlin analitik fonksiyonlarýndan biridir. belirli bir veri grubunun eþit parçalara bölmek için kullanýlýr. her satýra denk gelen
sýra grubundaki numaralar verilir. örn 20 satýrlýk bir veriyi 5 eþit parçaya böleceksek ilk 4 veriye 1 numaralý sýra numarasý verilir, sonraki 4 veriye
2 numaralý sýra numarasý verilir ve bu þekilde devam ederek son 4 veriye de 5 numaralý sýra numarasý verilecektir. yazým kuralý olarak ntile içerisine
yazýlan sayý verinin kaç gruba bölüneceðini belirtir over order by sýralama yapýlaca sütunu belirtir*/

SELECT 
    SalesID,
    SalesAmount,
    NTILE(4) OVER (ORDER BY SalesAmount) AS Quartile
FROM Sales; /*gptnin kod*/
--*********************************

select No, [Sipariþ No],
	(NTILE(8) over(Order by [Sipariþ No])) as sýra
from [Sipariþ Ayrýntýlarý]
--*******************************************************************************

/*DENSE_RANK komutu: bu özellik rank fonksiyonu ile ayný mantýk çerçevesinde çalýþmaktadýr ancak rank fonksiyonu gibi arada sýra atlamasý yapmadan çalýþýr
bu da rank fonksiyonu ile farkýný ortaya koyar.yani örnek vermek gerekirse rank fonksiyonu 100 100 200 þeklindeki verilerin sýralamasýný 1,1,3 þeklinde yapacaktý
ancak dense_rank fonksiyonu ile bu sýralama 1,1,2 þeklinde arada sýra kaybý yaþanmadan olacak. yani bir sýçrama yapýlmayacak.*/

select No, [Sipariþ No],
	(DENSE_RANK() over(Order by [Sipariþ No])) as sýra
from [Sipariþ Ayrýntýlarý]
--*******************************************************************************

/*ROW_NUMBER: her satýra benzersiz bir sýra numarasý atar. Atanan sýra numarasý, belirtilen bir sýralama düzenine baðlýdýr. ROW_NUMBER, ayný deðerlere
sahip satýrlara bile benzersiz bir numara verdiði için diðer sýralama fonksiyonlarýndan farklýdýr.*/

select No, [Sipariþ No],
	(ROW_NUMBER() over(Order by [Sipariþ No])) as sýra
from [Sipariþ Ayrýntýlarý]


select * from Müþteriler
select * from Sipariþler
select * from [Sipariþ Ayrýntýlarý]


/*hocanýn dediði yerlerde çalýþalým. müþteriler, iller ve cirolarla ilgili olan sýralamarý kullanabileceðimizi söyledi.*/

--RANK
SELECT [Eyalet/Ýl],
	(RANK() OVER(ORDER BY [Eyalet/Ýl])) AS SIRA
FROM Müþteriler

--DENSE_RANK
SELECT [Eyalet/Ýl],
	(DENSE_RANK() OVER(ORDER BY [Eyalet/Ýl])) AS SIRA
FROM Müþteriler

--NTILE
SELECT [Eyalet/Ýl],
	(NTILE(7) OVER(ORDER BY [Eyalet/Ýl])) AS sýra
FROM Müþteriler

--ROW_NUMBER
SELECT [Eyalet/Ýl],
	(ROW_NUMBER() OVER(ORDER BY [Eyalet/Ýl])) AS sýra
FROM Müþteriler

