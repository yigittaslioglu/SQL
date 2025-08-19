CREATE TRIGGER TRG_Silinen_kontrol
ON [Sipari� Ayr�nt�lar�]
AFTER DELETE
AS
BEGIN
    -- Sipari� No'su art�k Sipari� Ayr�nt�lar� tablosunda olmayan sat�rlar� kontrol et
    DELETE FROM [Sipari�ler]
    WHERE [Sipari� No] IN (
        SELECT DISTINCT d.[Sipari� No]
        FROM deleted as d
        LEFT JOIN [Sipari� Ayr�nt�lar�] as sa
        ON d.[Sipari� No] = sa.[Sipari� No]
        WHERE sa.[Sipari� No] IS NULL
    )
END

-- �stteki gptnin yazd���.
-- hocan�n istedi�i �ey de bu;

/*Northwind veritaban�nda �Sipari� Ayr�nt�lar�� tablosundan veri silindi�inde sipari�ler 
ve sipari� ayr�nt�lar� tablolar� aras�ndaki veri tutarl�l��� sa�lamak amac�yla bir trigger 
olu�turman�z beklenmektedir. *** Tetikleyiciniz �Sipari� ayr�nt�lar�� tablosundan silinen 
sat�r(lar)daki [sipari� No] alan�n� kontrol ederek e�er �Sipari� Ayr�nt�lar�� tablosunda ilgili 
[sipari� no] de�er(ler)inden hi� kalmam�� ise �Sipari�ler� tablosundan ilgili sat�r� da silmesi 
i�in programlanacakt�r.*/

select * from [Sipari� Ayr�nt�lar�]
select * from Sipari�ler


--BEN�M TR�GERE GELEL�M ��MD� DE.

Create trigger trg_silinen_kontrol
on [Sipari� Ayr�nt�lar�]


select * from [Sipari� Ayr�nt�lar�]
select * from Sipari�ler

delete from [Sipari� Ayr�nt�lar�] where [Sipari� No] = 80

select * from [Sipari� Ayr�nt�lar�]
select * from Sipari�ler

--*******************************************
--kodu inner join ile de yazaca��m i�te kod,
CREATE TRIGGER TRG_DeleteOrderIfNoDetails1
ON [Sipari� Ayr�nt�lar�]
AFTER DELETE
AS
BEGIN
    -- Sipari� No'su art�k Sipari� Ayr�nt�lar� tablosunda olmayan sat�rlar� kontrol et
    DELETE FROM [Sipari�ler]
    WHERE [Sipari� No] IN (
        SELECT d.[Sipari� No]
        FROM DELETED d
        INNER JOIN [Sipari�ler] s
        ON d.[Sipari� No] = s.[Sipari� No]
        WHERE NOT EXISTS (
            SELECT 1
            FROM [Sipari� Ayr�nt�lar�] sa
            WHERE sa.[Sipari� No] = d.[Sipari� No]
        )
    );
END;

/*1. SORUDAK� KOD �ALI�IYOR OLMASI GERELT��� G�B� �ALI�IYOR 2. SORUYA GE��YORUM VE �ZER�NDE SONRA GEL��T�RME YAPAB�L�R�M.*/

--*******************************************************************************


-- 2. SORU 
/*
/*MS SQL �DEV ���N ARA�TIRILMASI �STENEN KONULAR:
1)RANK 
2)NTILE
3)DENSE_RANK
4)ROW_NUMBER 
 Bu soru Sql Server sorgular�nda dereceleme (Ranking) i�levleri ile ilgilidir. RANK, NTILE, 
DENSE_RANK, ROW_NUMBER gibi komutlar�n �al�ma �ekillerini ve yaz�m kurallar�n� yaz�n�z ve 
bu komutlar� Northwind veritaban�nda kullanarak deneyimleyiniz. Olu�turdu�unuz 
sorgular� ve sonu�lar�n� yorumlayarak �devinize eklemenizi bekliyorum.  Size �rnek 
olmas� bak�m�ndan Northwind veritaban�nda m��teriler, iller ve cirolarla ilgili yap�lan 
s�ralamalar� kullanabilirsiniz.*/
*/

/*RANK komutu: Ranking fonksiyonlar� s�ralama i�levinde sat�rlara s�ra numaras� vermek i�in kullan�lan fonksiyonlard�r.
rank i�levi kullan�l�rken s�ralama yap�l�r ancak ayn� de�erlerde iki veri varsa ikisine ayn� s�ra numaras�n� verir. buna ek olarak ayn� s�ra numaras�n�
verdi�i say� kadar s�ra numaras�n� atlatarak devam ettirir. bu a�amada s�ra numaras�nda bir s��rama i�levi olur. �rn:
maa�  s�ra no
1000    1
2000    2
2000    2
3000    4
�eklinde s�ralama �rne�i verilebilir.

ek olarak rank ile over ve partition by komutlar� kullan�lmaktad�r. rank kullan�l�rken select ve from ile kullan�lacak tablolar se�ilir. sonras�nda
rank getirilir ve nas�l kullan�lacaksa o �ekilde yaz�l�r ve s�ralan�r.*/

SELECT �al��anID, Maa�,
    RANK() OVER (ORDER BY Maa� DESC) AS S�ra
FROM �al��anlar;

select No, [Sipari� No],
	(RANK() over(Order by [Sipari� No])) as s�ra
from [Sipari� Ayr�nt�lar�] /*hocan�n dedi�i s�ralamaya g�re d�zeltilecek. sadece �al��t�klar� g�r�ld�.*/
--*******************************************************************************


/*NTILE komutu, sqlin analitik fonksiyonlar�ndan biridir. belirli bir veri grubunun e�it par�alara b�lmek i�in kullan�l�r. her sat�ra denk gelen
s�ra grubundaki numaralar verilir. �rn 20 sat�rl�k bir veriyi 5 e�it par�aya b�leceksek ilk 4 veriye 1 numaral� s�ra numaras� verilir, sonraki 4 veriye
2 numaral� s�ra numaras� verilir ve bu �ekilde devam ederek son 4 veriye de 5 numaral� s�ra numaras� verilecektir. yaz�m kural� olarak ntile i�erisine
yaz�lan say� verinin ka� gruba b�l�nece�ini belirtir over order by s�ralama yap�laca s�tunu belirtir*/

SELECT 
    SalesID,
    SalesAmount,
    NTILE(4) OVER (ORDER BY SalesAmount) AS Quartile
FROM Sales; /*gptnin kod*/
--*********************************

select No, [Sipari� No],
	(NTILE(8) over(Order by [Sipari� No])) as s�ra
from [Sipari� Ayr�nt�lar�]
--*******************************************************************************

/*DENSE_RANK komutu: bu �zellik rank fonksiyonu ile ayn� mant�k �er�evesinde �al��maktad�r ancak rank fonksiyonu gibi arada s�ra atlamas� yapmadan �al���r
bu da rank fonksiyonu ile fark�n� ortaya koyar.yani �rnek vermek gerekirse rank fonksiyonu 100 100 200 �eklindeki verilerin s�ralamas�n� 1,1,3 �eklinde yapacakt�
ancak dense_rank fonksiyonu ile bu s�ralama 1,1,2 �eklinde arada s�ra kayb� ya�anmadan olacak. yani bir s��rama yap�lmayacak.*/

select No, [Sipari� No],
	(DENSE_RANK() over(Order by [Sipari� No])) as s�ra
from [Sipari� Ayr�nt�lar�]
--*******************************************************************************

/*ROW_NUMBER: her sat�ra benzersiz bir s�ra numaras� atar. Atanan s�ra numaras�, belirtilen bir s�ralama d�zenine ba�l�d�r. ROW_NUMBER, ayn� de�erlere
sahip sat�rlara bile benzersiz bir numara verdi�i i�in di�er s�ralama fonksiyonlar�ndan farkl�d�r.*/

select No, [Sipari� No],
	(ROW_NUMBER() over(Order by [Sipari� No])) as s�ra
from [Sipari� Ayr�nt�lar�]


select * from M��teriler
select * from Sipari�ler
select * from [Sipari� Ayr�nt�lar�]


/*hocan�n dedi�i yerlerde �al��al�m. m��teriler, iller ve cirolarla ilgili olan s�ralamar� kullanabilece�imizi s�yledi.*/

--RANK
SELECT [Eyalet/�l],
	(RANK() OVER(ORDER BY [Eyalet/�l])) AS SIRA
FROM M��teriler

--DENSE_RANK
SELECT [Eyalet/�l],
	(DENSE_RANK() OVER(ORDER BY [Eyalet/�l])) AS SIRA
FROM M��teriler

--NTILE
SELECT [Eyalet/�l],
	(NTILE(7) OVER(ORDER BY [Eyalet/�l])) AS s�ra
FROM M��teriler

--ROW_NUMBER
SELECT [Eyalet/�l],
	(ROW_NUMBER() OVER(ORDER BY [Eyalet/�l])) AS s�ra
FROM M��teriler

