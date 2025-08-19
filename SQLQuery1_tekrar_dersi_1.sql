/* SQL SORGULARI �ALI�MA 3. hafta -----------------------------*/
/*BURADA YGTASL� DATABASEDEN BA�LIYORUM*/

Create Database DenemeDatabase /*create database komutu veritaban� olu�turmaya yarayan bir komuttur ve 
�� temel komuttan biridir. sadece f5 tu�u ile komutlar�m� �al��t�rabilir ya da se�ip f5e bassarak sadece o komutu �al��t�rabilirim
bu komutu �al��t�rmadan �nce hangi veritaban�nda �al��t���n� bilmem gerekiyor yukar�dan kontrol ediyorum bunun i�in ve master yazd���n� g�r�yorum
bu komutu veritaban� sisteminin motoruna yani engine'nine g�nderiyorum ve bu komutun �al��mas�n� sa�l�yorum. komutu �al��t�rd�ktan sonra g�ncel durumu
g�rebilmek i�in sol tarafa gidip g�ncelleme butonuna basmam gerekmektedir. bundan sonra alter komutuna ge�ece�im*/


Alter Database DenemeDatabase Modify Name = DenemeDatabase3; /*burada veritaban�n�n alter komutu ile d�zenle demi� oluyorum ve Modify modifiye etmekten
gelir. alter de de�i�tirmek demektir. yani veri taban�n�n ismini de�i�tir ve DenemeDatabase3 �eklinde d�zenle demi� oluyorum. bunun i�in alter komutumu 
�nce yazd�m ve sonra database ismini de�i�tirmek istedi�im i�in database yazd�m ve g�ncel ismini yazd�m. daha sonra modify name diyerek ismini
de�i�tirmek istedi�imi belirttim ve g�ncel ismi e�ittir yazd�m. komutlar�n mant��� biraz daha ingilizce c�mle yap�s�ndad�r.
bu y�zden �nce veritaban�n� d�zelt diyorum, sonras�nda bana hangi veritaban�n� d�zeltmek istedi�imi soruyor. ismini veriyorum ve ne �ekilde d�zeltmek
istedi�imi s�yleyerek komutu bitiriyorum. emir c�mlesinden sonra nesneyi s�yl�yorum ve sonra neyi d�zeltece�ini s�yl�yorum.*/

/*refresh i�in database �st�ne gelip en �stteki, sonra sa� t�k yap�p refresh de diyebilirim.*/

Drop Database DenemeDatabase3; /*veritaban�n� silmek �ok basit drop komutunu kullan�p yine database de de�i�iklik yapmak istedi�im i�in database 
yaz�yorum ve en sonunda da silmek istedi�im veritaban�n�n ismini veriyorum. bu sayede veritaban�n� silmi� oluyorum. bunu ayn� �ekilde veritaban� �zerine gelip
sa� t�k delete diyebilirim. ancak a�a��daki kutular� tiklemem laz�m yani mevcut ba�lant�lar� kapat demem laz�m. ancak bunlar� komutla yapmak �ok daha �nemli
*/


/*yukar�daki master yani hangi dbde oldu�umu g�steren k�s�mda kodla i�lem yapabilmek i�in Use deyip db ismini yazmak gerekiyor*/
Use ygtasli /*�eklinde. bundan sonra yaz�lan kodlar� o dbye g�nderecek*/

/* tablo olulturmak i�in yine create komutunu kullanmam gerekiyor ve create table dedikten sonra tablonun ismini vermem gerekiyor
sonras�nda parantez a��yorum ve a�a��da kapat�yorum art�k her �ey bu parantez i�erisinde olacak.*/
Create Table OGR11(
kayitno int identity(1,1),
tcno1 nvarchar(11) not null,
ad nvarchar(50) not null,
soyad nvarchar(50) not null,
dogtar smalldatetime not null
)
/*kayitno diyerek tablomun ad�n� ve sonras�nda int yazarak tablomda yer alacak verinin t�r�n� yazm�� oluyorum. her zaman identity kullanmak zorunda de�ilim
ancak kullan�rsam direkt olarak i�erisinde veriyle ba�lam�� olacak ve 1den ba�layarak her seferinde 1 at�rarak veriler devam edecek, birdaha da ben
de�i�tiremem. art�k elimle buraya veri girmeme gerek yok ben bir veri silsem bile en son kald��� yerden devam edecek. sonras�nda virg�l koyup bir alt sat�ra
ge�iyorum ve tcno yaz�p yeni s�tun ismimi belirtiyorum. tcno verisini, e�er herhangi bir say�sal veriyle matematiksel i�lem yapmayacaksam bunu 
text olarak tutmak daha sa�l�kl�d�r. kural�na uyarak text �eklinde tutaca��m. bu y�zden nvarchar(11) diyorum yani verimi texte d�n��t�rmek i�in nvarchar
veri t�r�n� kullan�yorum ve parantez i�erisinde 11 yaz�yorum yani maksimum 11 karakterli olmas�n� istiyorum. sonuna da not null ekliyorum yani bunu 
herhangi bir i�lemde varsay�lan olarak bo� ge�emezsiniz demek. sonras�nda ad ve soyad i�in de ayn� �eyi yap�yorum ve bo� ge�ememesini sa�la�� istedi�im
maks karakter say�s�n� giriyorum. do�um tarihine geldi�imde ise smalldatetime veri t�r�n� kullan�yorum ancak datetime veri t�r�n� de kullanabilirim.
art�k �al��t�rmaya haz�r�m ve bu kodu �al��t�rd���mda bana belirledi�im �zelliklerde bir tablo olu�turacak. sol tarafta tablolar�m�n alt�nda 
tablolar�m�n �zelliklerini de g�rebilirim sonras�nda bunlar� da inceleyece�iz. tables alt�nda olu�turdu�um tablea t�klay�p columns k�sm�na geldi�imde 
olu�turdu�um s�tun isimleri ve �zelliklerini g�rebiliyorum burada not null k�s�tlamas� ve veri t�r�m� g�rebiliyorum. olu�turdu�um tabloda sa� t�klay�p
design dersem olu�turdu�um tabloyu grafiksel bir aray�zle g�rece�im. select top 1000 verinin i�eri�ini g�rmek i�in kullan�l�r. edit top 200 rows dedi�imde
ise, bana 200 sat�r edit etmeme izin veriyor. ��nk� �rn 100milyon sat�rl�k bir tabloda bu sorguyu yanl��l�kla �al��t�r�p kaynaklar� bitirmemek i�in bu 
�ekilde s�n�rlar koyulmu�. �zelliklerden kalkar ama kald�rma. ya da yukar� ��kar�labilir s�n�r. buna t�klay�nca tablom geliyor.*/

/*art�k burada kendi tablomu g�r�yorum ve buradan ilk kayd�m� olu�turabilirim. kayitno k�sm�nda veri giremedi�imi g�rebilirim ��nk� o s�tunu
otomatik dolduracak �ekilde yapt�m. sonras�nda tcmi ad�m� vs yazarak s�tunlar�m� dolduruyorum. date s�tununda aralar�na nokta koyarak doldurdum ve 
a�a��ki sat�ra oklardan indi�imde art�k kay�d�m yap�lm�� oldu ve s�ray� da otomatik vermi� oldu. tcno k�sm�nda 11 karakter doldurma zorunlulu�um yok 
ancak en fazla 11 karakter girme zorunlulu�um bulunmakta bu s�n�r� a�maya �al��t���mda bana bir hata ile kar��la�t���na daire bir mesaj verecek.
yani daha az�na itiraz etmeyecektir ancak daha fazlas�na yer ay�rmad���m i�in itiraz edecektir.*/

/*Alter komutun ile al��t�rma yapaca��z. tabloyu d�zeltmek i�in alter table komutunu kullan�yorum. bundan �nce db demi�tik �imdi table diyorum.
e�er mevcut tabloda bir de�i�iklik yapmak istiyorsam bunu alter table komutu ile yapaca��m. bunun i�in alter tabledan sonra �al��aca��m tablonun
ismini yazaca��m.*/

Alter Table OGR11 Add Ana_adi nvarchar(50) 
Alter Table OGR11 Add Baba_adi nvarchar(50) /*alter table ve �al��aca��m tablo ad�n� yazd�ktan sonra eklemek istedi�im tablo ismini yazd�ktan sonra
veri t�r�m� ekliyorum ve i�erisine ne kadar s�n�r olmas�n� istedi�imi yaz�yorum. sonra tablo columns k�sm�n� refresh ediyorum ve g�r�n�yor. sonradan
olu�turdu�um i�in de i�erilerinin bo� olmas� normal. tablo sayfs�na ge�ip ctrl 1,2,3 tu�ar�n bast���mda bana di�er tablo sayfalar�n� a�acak �rn diagram� da
*/

Alter Table OGR11 Add sil tinyint /*tabloma sil ad�nda ve tinyint veri tipinde bir s�tun daha ekliyorum. yani veri t�r� 1 ile 255 aras�nda k���k bir t�r*/

Alter Table OGR11 Alter column sil smallint /*veri t�r�n� de�i�tirece�im alter table OGR11 dedikten sonra de�i�iklik i�lemi yapaca��m i�in tekrardan alter diyece�im.
alter column diyerek s�tun �zerinde de�i�iklik yapaca��m i�in column diyorum ve s�tun ismimi yazd�ktan sonra yeni veri t�r�m� yaz�yorum. smallint 65.535e
kadar veri alabilmektedir.*/

Alter Table OGR11 Alter column sil int /*tekrardan veri t�r� de�i�ikli�i yaparak int yapt�m.*/


Alter Table OGR11 Add constraint ck_sil1 check ([sil] <= 1200) /*bu bir s�n�rlamad�r. bundan sonra sil alan�na 1200den b�y�k bir say� girilemeyecek.
bu veri b�t�nl���n� sa�lamak �zere yap�lan bir i�lemdir. sil s�tunuma bir s�n�rlama koymu� oldum. bundan sonra yanl��l�kla girilebilecek b�y�k say�lar 
vs i�in de s�n�rlama koymu� oldum. bunun i�in veya benzeri �eyler i�in de check yazabilirim asl�nda kontrol bluklar� gibi �al���yorlar.
�rn ders kodu girece�im. ancak hi� olmayan bir dersin kodunu girdim yani bu tazr bir kontrol yazmazsam yeni bir des kodu olu�turmu� mu olaca��m, bunun
olmamas� gerekmektedir. ya da tombul parmak sendromlar�n� engelleyebilmek i�in kullan�l�rlar. bunu yine olu�turdu�um ck �zerine gelip sa�t�k modify diyip
grafik aray�z �zerinden de d�zeltebilirim.*/




/*index i�lemleri*/
/*tablomda �ok fazla sat�r varsa verilerimi bulmakta zorlanabilirim. bir tcno arayacaksam gidip t�m tcnolar� aramama gerek yok bunun i�in index olu�turuyorum,
bunun i�in uniq indexte olu�turulabilirim ancak uniq indexler daha farkl� �ekilde olu�turulabilir.index olu�turmak i�in Create index demem gerekiyor
ve sonra index ad�n� belirlemem gerekiyor bundan sonra on diyip hangi tablo �zerinde olu�turacaksam onu yazmam gerekiyor. sonra da hangi s�tunda yazaca��m�
yazmam gerekiyor*/

Create index Indx_tcno1 on OGR11(tcno1)/*�al��t�rd�ktan sonra sol tarafta indexes alan�nda olu�turdu�um indexi g�rebilirim. index olu�turman�n �rn cinsiyet 
i�in bir mant��� yok zaten ya kad�n ya da erkek olacakt�r ancak fazla uniq de�i�ken i�eren s�tunlar i�in olu�turmak mant�kl�d�r. bunlara ek olarak default
da ekleeybilirim Default(0) dedi�imde 0 dolu olarak gelecektir olu�turdu�um veri. �rn: */

Alter Table OGR11 Add logtar datetime Default(getdate()) /*default olarak g�n dolu gelecek bir tablo olu�turabiliyorum. o an�n g�n�n� ekleyecek
veriyi ekleyip tabloyu ctrl r ile tekrardan �al��t�rd���mda g�n� ekledi�ini g�rebiliyorum. bu kodda alter table OGR11 dedikten sonra logtar ad�nda
bir tablo olu�turmad�m ancak kodumu �al��t�rd� bu sayede logtar ad�nda bir tablo da eklemi� oldu ve datetime verisi eklemek istedi�imi s�yledim ve 
burada da default olarak eklenen an�n tarihini eklemek istedi�imi s�yledim ve art�k o s�tunlar otomatik olarak dolu gelecek. bunlar verileri loglamak i�in
kullan�labilir bu sat�r�n ne zaman olu�turuldu�unu anlamak i�in kullan�l�r. yani ben buraya art�k bir de�er girmezsem kodun olu�turulmu� oldu�u tarih 
girilecek.*/


/*�imdi de unique index olu�turaca��m*/
Create Unique index  Indx_ad on OGR11(ad) /*ad alan�nda bir unique index olu�turdum ve ad�n� verdim. art�k ad alan�nda birden fazla ayn� ad� 
giremeyece�im bunu sadece uniq index nas�l olu�turulabilir g�rmek i�in yazd�m. normalde b�yle bir �ey yapmamam gerekiyor.burada addan sonra virg�l
koyup soyad �eklinde de devam edebilirdim ve bu uniq indexi birden fazla alanda tan�mlam�� olabilirdim. ancak burada ad� ve soyad� aynn� anda olmamal�.*/



/*View konusu: asl�nda g�r�n�m olu�turmak i�in kulland���m�z bir yap�.*/
Select tcno1, ad from OGR11 /*sadece tcno ve ad�n� g�rmek istedi�im i�in ogr11 tablosundan onlar� se�tim. i�te ben bu sorguyu bir g�r�n�m olarak 
kaydedebilirim ve tekrar tekrar ayn� sorguyu yazmak yerine bu g�r�n�m� �a��rabilirim. bunun i�in create view komutunu kullanmam gerekiyor ve sonra yine
isim vermem gerekiyor aralar�na da as yazmam gerekmektedir.*/

CREATE VIEW OGRtcad AS
Select tcno1, ad from OGR11 /*viewlerde bu tablomu g�rebilirim. asl�nda olulan �ey bir tablo olarak g�z�k�yor ancak bu asl�nda sanal bir tablo
bunun se�imi de a�a��daki �rnekte yer al�yor*/


Select * from OGRtcad /*��kan sonu�ta g�r�ld��� gibi tamam�n� se�meme ra�men tablom ogrtcad oldu�u i�in sanal tablomun tamam� geldi normal bir tabloymu�
gibi �al��makta. bundan sonra viewimde alter i�lemi ile g�ncellemeler de yapabilirim.*/

Alter view OGRtcad 
as
Select tcno1, ad,soyad from OGR11 /*ogrtcad tablomu g�ncellemi� oldum ve art�k ad�n yan�nda soyad kolonunu da getirecek. bunu yapmak i�in alter komutumu
kulland�m, yine g�ncelleme yapmak istedi�im s�tunu se�tim araya as dedim ve select se�imlerimi yapt�m daha sonras�nda bu se�imlerimin orijinal tablodan
gelmesi gerekti�i i�in fromdan sonra orijinal tablomun ad�n� yazd�m.*/

Drop view OGRtcad /*ya da drop ile viewimi silebilirim.*/


/*bu �nitede bilmemiz gereken en son �ey ise bir prosed�r yazmakt�r.*/

Create Procedure gettc5
as
 begin
  select tcno1 from OGR11
end

/*burada bir prosed�r olu�turmu� oluyorum create metodu ile kulland�m ve procedure olu�turmak istedi�im i�in onu yazd�m sonras�nda da procedureme bir 
isim verdim asden sonra istedi�im parametreleri yazabilirdim ancak ben bu sefer yazmayaca��m. beginden sonra da t�m select sorgular�m� yaz�yorum.
en sonuna da end diyerek proceduremi bitiriyorum. bunu g�zlemlemek i�in programmabilitynin alt�nda stored procedures k�sm�nda g�rebilirim. bunu modify
edebilirim ve geli�tirmemede s�n�r yok son 17dk anlat�yor. tam olarak anlamad�m neden kullan�l�yor bakaca��m.*/


/*bu �nidete bilmen gereken �eyler kesinilkle create alter ve drop bu komnutlar� iyice hatmetmen laz�m sak�n ka��rma. bu �nite burada bitti.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/

/* BURADAN SONRA NORTHW�ND DATABASEDEN DEVAM ED�YORUM.*/
/* SQL SORGULARI �ALI�MA 4. HAFTA --------------------------------*/
/*6. �niteyi i�eyece�iz.*/

select 'hello world' as mesaj /*ilk olarak merhaba d�nya yazd�rmay� ��rendik, bunu sleect komutuyla yapabiliriz. i�erisindeki mesaj� t�rnaklar �erisinde
yaz�yoruz ve kodumu �al��t�rd���mda mesaj�m� g�rebiliyorum. s�tunuma ba�l�k eklemek i�in ise as kelimesini kullan�yorum ve s�tunumun ba�l���n�n ne
olmas�n� istiyorsam sonras�nda onu yaz�yorum.*/

/*where komutu sorguma filtre eklememi sa�layabiliyor. se�ilen komutu s�n�rlamama yar�yor, groupby gruplama i�in kullan�l�r, having gruplad���mz� verileri
k�s�tlamak i�in kullan�l�r yine, order by ise s�ralama yapmam� sa�lamaktad�r, defterdeki mant�ksal i�leme s�ralamas�n� bil.*/

select * from �al��anlar /*bazen k��eli parantez kullanmam gerekibilir, select se�im yapmaya yarar ve * t�m s�tunlar demektir. from ile de hangi
s�tunu tablodan almam gerekti�ini s�ylemektedir. select ile hepsini se�ti�im i�in t�m s�tunlar gelecektir.*/


select Ad, Soyad�, [E-posta Adresi] from �al��anlar /*ilk sorgumuz olarak select ile ad, soyad� ve e posta s�tunlar�m� getirece�im ve bunu from ile �al��anlar
tablomdan getirmek istiyorum. ancak e posta ayr� kelimeler i�erdi�i i�in bunu k��eli parantez ile yaz�yorum ve sorgumu �al��t�r�yorum. ��nk� ayr� kelimeler
ile anlamayabiliyor. select se�imim ile ilgilendi�im s�tunlar� g�r�nt�lemi� oldum*/


select Ad, Soyad�, [E-posta Adresi] into deneme2 from �al��anlar /*burada sorgumu into ile deneme isimli dosyaya kaydetmek istedim, into komutu fromdan
�nce yaz�l�r bu select ile yapt���m sorgumu bu �ekilde kaydetmek i�in kullan�l�r. bu dosyay� yani yeni tablomu tables alt�nda g�rebilirim. bu tablo
olu�turdu�um sorgumun tablolar�n� i�ermektedir.*/


select * from deneme2 /*art�k olu�turdu�um deneme2 isimli tablomu se�ebilirim * ile t�m s�tunlar�n� se�iyorum.*/


drop table deneme2 /*into ile olu�turdu�um table�m� drop table komutu ile siliyorum. burada droptan silece�im �eyin t�r�n� s�ylemeyi unutmamam laz�m.*/



/*DISTINCT KOMUTU--------------------------------------------------------*/

/*disting benersiz hale yani tekil hale getirmek demektir dolay�s�yla distence komutu benzersiz hale getirmek i�in kullan�l�r. bunu �al��anlardaki
i� �nvanlar� k�sm�nda deneyelim*/

select [�� Unvan�] from �al��anlar /*i� �nvanlar�n� inceledi�imde tekrar eden i� �nvanlar� oldu�unu g�r�yorum. bunu distence ile tekil yani unique hale
getirece�im.*/

select distinct [�� Unvan�] from �al��anlar /*bu komutu �al��t�rd���mda art�k hepsi tekil gelmi� oldu ve bu �ekilde unique de�erlere ula�abilirim
bu komut selectten hemen sonra kullan�l�r se�ece�im s�tunlar�n isimlerini yazmadan �nce. ikisini de ayn� anda se�ip �al��t�r�p bakabilirim.*/




/*ORDER BY KOMUTU--------------------------------------------------------*/
/*Order by komutu s�ralama yapmak i�in kullan�l�r.*/

select * from �al��anlar/*�ncelikle t�m �al��anlar tablosunu bir g�r�nt�lemek istiyorum ve sleect all yap�yorum sonras�nda ad soyad ve �ehir ile s�ralama
yapaca��m*/

select Ad, Soyad�, �ehir from �al��anlar
order by Ad /*order byda neye g�re s�ralamak istiyorsam ona g�re s�ralama yapmam laz�m �nce ada g�re s�ralamak istiyorsam order bydan sonra Ad demem laz�m.
art�k select ile t�m se�ti�im s�tunlar� ad s�tununa g�re s�raya dizecek. ad s�ralamas� da nvarchar veri oldu�u i�in alfabetik olarak s�raya dizecek.*/

select Ad, Soyad�, �ehir from �al��anlar
order by �ehir /*�ehir isimlerine g�re s�ral�yorum*/

select Ad, Soyad�, �ehir from �al��anlar
order by Ad, �ehir /*�nce ada g�re sonra �ehire g�re s�ral�yorum, yani �nce adlar�n alfabetik s�ras�na g�re sonra da denk gelen �ehirlerin alfabetik s�ras�na
g�re s�ral�yorum*/

select Ad, Soyad�, �ehir from �al��anlar
order by Ad, Desc �ehir /*e�er tersine bir s�ralama yapmak istiyorsam desc yazmam gerekmektedir, azalandan artana s�ralamas� ascending �eklinde varsay�lan
olarak s�ral�yor ama descengind ile tersine s�ral�yor ve bunu hangisinde istiyorsam onun hemen �n�ne yazmam gerekmektedir.*/


select Ad, Soyad�, �ehir, [E-posta Adresi] from �al��anlar
order by [E-posta Adresi] /*e posta adresindeki s�raya g�re �al��anlar tablosundan select ile se�ti�im s�tunlar� s�ralad�m. daha sonras�nda len ekleyece�im*/


select Ad, Soyad�, �ehir, [E-posta Adresi] from �al��anlar
order by len([E-posta Adresi]) /*�imdi s�ralama de�i�ecek ��nk� e posta adreslerinin karakter say�lar�n g�re s�ralamam� de�i�tirmi� oldum. burada select
sorguma ekstradan lenli bir e posta adresi yazarsam ��kt�lar�mda karakter say�lar�m� da g�sterecek. yani ben select sorgular�ma tablomda olmayan bir �ey
yazarsam ancak mant�kl� olmas� laz�m bunu ��kt�lar�mda bana g�sterebiliyor. sonras�nda column name vs de ekleyebiliyorum.*/


select Ad, Soyad�, �ehir, [E-posta Adresi], LEN([E-posta Adresi]) from �al��anlar
order by len([E-posta Adresi]) /*e posta adreslerimin karakter say�lar�n� g�sterecek len fonksiyonumu select sorgular�m�n i�erisine yazarak g�rebiliyorum
ve burada azalan s�rada oldu�unu g�rebiliyorum. bu t�r fonksiyonlar sorgunun genellikle her yerinde kullan�labiliyor.*/


/*top(3) diyerek de sorgumun ilk 3 sat�r�n� g�rmek gibi i�lemler de yapabilirim. bunu da selectten sonra s�tun isimlerimi yazmadan hemen �nce yazmam
gerekmekte*/

select top(3) Ad, Soyad�, �ehir, [E-posta Adresi], LEN([E-posta Adresi]) from �al��anlar
order by len([E-posta Adresi]) /*top(3) ile ilk 3 sat�r�m� g�rd�m topun i�erisine ne yazarsam o kadar sat�r g�rebiliyorum. b�ylece karakter uzunluklar�
en k�sa olan isimleri g�rm�� oldum. buna da desc ekleyebilirim.*/

select top(3) Ad, Soyad�, �ehir, [E-posta Adresi], LEN([E-posta Adresi]) from �al��anlar
order by len([E-posta Adresi]) desc, �ehir /*desc �ehir diyerek �ehirin tersine g�re s�ralayarak en uzun e postalara sahip son �ehirleri g�rebiliyorum

order by komutu mant�ksal s�ralamada sonda oldu�u i�in her t�rl� i�lem yap�ld�ktan sonra order by sorgular� �al���r bunu unutma.*/




/*WHERE KOMUTU--------------------------------------------------------*/
/*Where komutu yazd���m sorgularda s�n�rlama yapmak / filreleme yapmak i�in kullan�l�r. �rn: */

select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where ([�r�n Ad�]='Ceviz') /*select ile se�ilen s�tunlar �r�nler tablosundan getirilsin ve bu s�tunlar �r�n ad� ceviz olanlar i�in getirilsin dedim
bunun d���nda mant�ksal operat�rler de var. bunlara bak*/


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where ([Liste Fiyat�] > 10) /*se�ilen s�tunlar� �r�nler tablosundan getiriyorum ancak liste fiyat� 10un �zerinde olanlar i�in bunlar� getiriyorum.
ayn� anda birden fazla filtreleme de yapabilirim �rn:*/


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where ([Liste Fiyat�] > 10) and ([Liste Fiyat�] < 50) /*�imdi de liste fiyat� 10dan b�y�k 50den k���k olanlar gelecek. where komutu ister 50 tablo
birletirilmi� olsun ister sonrdan tablo eklenmi� olsun her sat�ra bu ko�ullar� uygulamaktad�r bunu unutma. yani ko�ullar� sa�layan t�m sat�rlar� getir.
and operat�r� kullan�l�rken ba�lanan iki ko�ulu sa�layan sat�rlar gelir sadece. tabii ki yine order by kullan�labilir.*/


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where ([Liste Fiyat�] > 10) and ([Liste Fiyat�] < 50)
order by [Liste Fiyat�] /*yapt���m sorguyu ayn� �ekilde b�rakt�m ve order by ile liste fiyatlar�n� artan fiyatlara g�re s�ralad�m. yani fiyatlar�m
10dan b�y�k olan ilk de�erden ba�layarak 50in alt�nda olan son de�ere kadar s�ralanacak. ancak iki farkl� liste fiyat� sorgusu yazmak yerine 
between de kullanabilirim.�rn: */


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where [Liste Fiyat�] between 10 and 50
order by [Liste Fiyat�] /*bu �ekilde iki kere liste fiyat� yazmak zorunda kalmam ancak burada dikkat etmem gereken �ey 10u ve 50yi yazarken dahil etmesi
yani b�y�k e�it ve k���k e�it �eklinde kullanmas�d�r. bunun ba��na not da koyabilirim bu da yazd���m sorgunun de�ilini yani tersini almama yarar.*/


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where [Liste Fiyat�] not between 10 and 50
order by [Liste Fiyat�] /*not between ile 50 ve 10 d���nda kalanlar� getirecek. e�er ben bir �eyin olurunu biliyorsam de�ilini bulabilmek i�in 
not operat�r�n� kullanabilirim. bunu devam ettirip ekstradan bir not between de daha yaz�p filtrelememi ikinci kez yapabilirim �rn buradan 2 ve 4 
aras�nda bulunan de�erleri de silece�im*/


select [�r�n Kodu], [�r�n Ad�], [Liste Fiyat�] from �r�nler 
where ([Liste Fiyat�] not between 10 and 50)
and ([Liste Fiyat�] not between 2 and 4)
order by [Liste Fiyat�] /*sorguma ekstradan bir filtre ekleyip liste fiayt�mda bulunan 2 ve 4 de�erleri aras�ndaki sorgular� da not between ile 
��kard�m. yani yine bir sorgunun olurunu bilip not�n� yazarak sorgumdan ��karm�� oldum. ekstra bilgi olarak birden fazla filtreleme yap�lacaksa
andler aras�nda parantez kullanmak faydal� olabilir. andlerin do�ru �ekilde �al��abilmesi i�in.burada iki ko�ul var ve bu ko�ullar� �st �ste �al��t�r�d�m.
10 ile 50 aras�nda olmas�n ve 2 ile 4 aras�ndakiler olmas�n demi� oldum. 1.08.00 da kald�m.*/


/* L�KE OPERAT�R� -----------------------------------------------------*/
/*like operat�r� �r�n adlar�n� g�r�nt�lemek i�in kullan�l�r. bir ifadenin anahtar �ekilde ifadelerini olu�turmak i�in kullan�l�r, yani anahatar kelimeler
veya harfler ile filtreleme yapabilir veya istedi�im �eyi bulabilirim. ya da t�m bu �ekillerde s�n�rland�rma yapabilirim.*/

select [�r�n Ad�] from �r�nler
where [�r�n Ad�] like '%B%'
order by [Liste Fiyat�] /*i�erisinde b harfli olan �r�nleri getirdi ve liste fiyat�na g�re s�ralad�. bu s�n�rlamay� art�r�p arkas�na bir harf daha
yazabiliriz a�a��daki gibi bu s�n�rlamaya harf eklerken yine y�zde ifdesi ile kapamam laz�m.*/


select [�r�n Ad�] from �r�nler
where [�r�n Ad�] like '%B%�%'
order by [Liste Fiyat�] /*bu �ekilde harf ekleyerek demek istedi�im �ey b harfinden sonra i aharfli olanlar� bana getir demektir.*/


select [�r�n Ad�] from �r�nler
where [�r�n Ad�] like '%B%I'
order by [Liste Fiyat�] /*e�er sonundaki % i�aretini kald�r�rsam bitsin demek oluyor, yani burada � ile bitsin demek istedim ve bana � ile biten 
�r�n adlar�n� �r�nler tablosundan getirerek liste fiyat�na g�re s�ralad�. y�zdeyi koyarsam ise i�erisinde ge�sin demek oluyor.*/



select [�r�n Ad�], [Liste Fiyat�] from �r�nler
where [�r�n Ad�] like '%B%I'
order by [Liste Fiyat�] desc /*liste fiyatlar�n� g�r�p ayr�ca liste fiyatlar�n�n tersi �eklinde s�ralad�m. �r�nler de i�erisinde b ge�ip � ile biten 
�r�nlerdir.*/




/* �N OPERAT�R� -----------------------------------------------------*/
/*in operat�r� i�erisinde sadece s�yledi�im �eyi getiren operat�rd�r var m� diye sormama yarar.*/

select [�r�n Ad�], [Liste Fiyat�] from �r�nler
where [�r�n Ad�] in ('Ceviz', 'Hint �ay�')
order by [Liste Fiyat�] desc /*s�n�rlamak i�in de in komutunu kullanabiliyorum yani sadece yazd���m �eyleri arayabiliyorum. ceviz ve hint �ay�n� 
bulmak istedim ve ilgili tablo s�tunlar� yaz�p where ile sorgular�m� yaz�p buldum. not �eklinde de kullanabilirdim o zaman da ceviz ve hint �ay� d���ndaki
t�m �r�nlerimi getir demi� olurdum*/



select [�r�n Ad�], [Liste Fiyat�] from �r�nler
where [�r�n Ad�] not in ('Ceviz', 'Hint �ay�')
order by [Liste Fiyat�] desc /*not diyerek yine olurunu bildi�im bir sorgunun de�ilini ald�m. yani ceviz ve hint �ay� d���ndaki t�m �r�nlerimi getir dedim.*/
/*ek bilgi null sqlde bo� olan anlam�na gelir. is not null bo� olmayanlar demektir. bunun kullan�m�yla ilgili farkl� kullan�mlar kitapta mevcut*/



/* WHERE �LE TABLO B�RLE�T�RME / TABLOLARI B�RB�R�NE BA�LAMA ��LEMLER�-------------------------------------------*/
/*iki tabloyu birbirine ba�laman�n farkl� y�ntemleri vard�r bunlardan biri where ile ba�lamakt�r.*/


select top(3) M��teriler.�irket, M��teriler.Soyad�, M��teriler.Ad, M��teriler.[No], Sipari�ler.[M��teri No]
from Sipari�ler, M��teriler
where Sipari�ler.[M��teri No] = M��teriler.[No] /*sipari�ler tablomda sipari� bilgilerim var m��teriler tablomda ise m��teri bilgilerim var. bu iki
tabloyu birbiri ile birle�tirece�im. ikisini de no k�s�mlar�ndan birle�tirece�im. tablolar� birbirleri ile yabanc� anahtarlar ile ba�layaca��m. ��nk� 
sipari�ler tablosundaki m��teri no ile m��teriler tablosundaki no bilgisi ayn� ve bunlar� ba�lamam gerekiyor. m��teriler tablosunda m��teri no sipari�ler
tablosunda da no diye bir tablo olmad��� i�in ikisini birbirine ba�lamam gerekiyor. o y�zden iki alan� ba�lamam gerekiyor. wherei hep s�n�rlama ve
filtreleme i�in kullanabilece�imi biliyordum ancak tablo ba�lamak i�in de kullanabilirim. burada g�rmek istedi�im t�m s�tunlar� yazd�ktan sonra from ile
hangi tablolardan gelmek istediklerini yaz�yorum sonra where ile hangi tablodan ve hangi s�tunu birle�tirmek istedi�imi yaz�yprum sonra e�ittir diyip
tekrardan tablo ve s�tun ismini yaz�yorum bu sayede hangi tablolardan hangi s�tunlar� birle�tirmek istedi�imi anl�yor ve birle�tirip sorgumu �al��t�r�yor.*/


/*bunu inner join ile de ba�layabilirim inner join fromdan sonra yaz�l�r on edat� ile kullan�l�r. �nce hangi tablolar� ba�lamak istedi�im yaz�l�r sonra
on denir ve hangi s�tunlar� ba�lamak istedi�im yaz�l�r.*/

select M��teriler.�irket, M��teriler.Soyad�, M��teriler.Ad, M��teriler.[No], Sipari�ler.[M��teri No]
from Sipari�ler inner join M��teriler
on Sipari�ler.[M��teri No] = M��teriler.No /*az �nce where komutu ile yapt���m�z i�in ayn�s�n� �imdi inner join ile yapt�k mant��� tamamen ayn�,
�nce ba�layaca��m tablo isimlerini s�yl�yorum sonra tablo isimlerini ba�layaca��m s�tunlar ile birlikte s�yleyip select sorgumda g�rmek istedi�im 
s�tunlar�m�n isimlerini yaz�yorum.*/

/*a ve b tablolar�n� birbiri ile ba�la kitapta �rnekleri var. son 20 dk bunu anlat�yor.k�sa bir �rn: */

select * from
A inner join B on A.A_Id = B.B_Id /*id k�s�mlar�ndan iki tabloyu birbirine ba�lad�m.*/

/*hocan�n kodlar�n� a�a��ya b�rak�yorum. �al�� gerizekakl�*/,

--1)
Select A.Ad,B.Name,A.A_Id,B.B_Id  from 
A inner join B on A.A_Id=B.B_Id

--2)
Select A.A_Id,A.Ad,B.B_Id , B.Name from 
A Left Outer join B on A.A_Id=B.B_Id

--3)
SELECT A.A_Id, A.Ad, B.B_Id, B.Name
FROM A INNER JOIN B ON A.A_Id < B.B_Id

/*bu ba�lant�lar bizim i�in olduk�a �nemli ve s�rekli kullanaca��z. 136. sayfada full outer join vs.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 5. HAFTA ------------------------------------*/

select * /*select ile t�m s�tunlar�m� se�iyorum sonras�nda from ile hangi tablodan gelmesi gerekti�ini se�iyorum ve inner join ile hangi tablolar�*/
from Sipari�ler As S /*ba�lamak istedi�imi s�yl�yorum. sornas�nda bunlara as ile k�saltma isimler veriyorum. on burada ba�lama edat� nereden ba�amam*/
inner join M��teriler as M on S.[M��teri No] = M.No /*gerekti�ini s�l�yorum. inner joinden sonra ikinvi hangi s�tun ba�lanacaksa o yaz�l�r sonras�nda on
denir ve tablolar hangi ortak s�tunlar�ndan ba�lanacaksa onlar yaz�l�r.*/


/*buna ek olarak ben sadece m��terilerin ad�n� ve iki str ifadeyi birle�tirip ad ve soyad� da getirebilirim*/
select S.[Sipari� No], Ad +' '+ M.Soyad�, [Sipari� Tarihi]
from Sipari�ler As S 
inner join M��teriler as M on S.[M��teri No] = M.No
order by M.No
/*inner joine ile birebir ba�lad�m. sonras�nda select k�sm�na g�rmek istedi�im s�tunlar� teker teker yazd�m ve ad ve soyad�n� g�rmek istedi�im i�in
ekstradan bir s�tunmu� gibi ikisini birle�tirerek yazd�m ve istersem column name de verebilirim. en son da sipari� tarihi ekledim. sonras�nda da
order by ile m��teri noya g�re s�ralad�m.*/

/*e�er istersem tabloma ikinci bir inner join yazarak ikinci tablo ile ba�layabilirim. bunu yaparken �nce tablo ismimi vermem gerekiyor.on k�sm�nda ba�lant� 
k�sm� kuruluyor*/
select S.[Sipari� No], Ad +' '+ M.Soyad�, [Sipari� Tarihi],[�r�n No]
from Sipari�ler As S 
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No]=SA.[Sipari� No]
order by M.No
/*yine inner join mant���n� kullanarak �nce eklemek yani yeni ba�lamak istedi�im tablo ismini verdim sonras�nda on ile hangi s�tunlar�ndan ba�lamak 
istedi�imi s�yledim. sonras�nda selectime �r�n no yu da ekliyorum ve verimin artt���n� g�r�yorum. burada inceledi�imde �rn aliye berberin 3 adet sipari�inde
1, 43, 81 nolu �r�nlerimi ald���n� g�r�yorum. mant�ksal olarak do�ru �ekilde ba�lamam �ok �nemli. hatal� sorgu yapabilrim ve kar��ma veri gelebilir
ancak sorgunun �al��mas� sorgunun do�ru oldu�u veya mant�ksal olarak do�ru veya ula�mak istedi�im sonu� oldu�u anlam�na gelmez. sonras�nda sorguma bir inner 
join ekleyece�im*/



select S.[Sipari� No], Ad +' '+ M.Soyad�, [Sipari� Tarihi],[�r�n No], U.[�r�n Ad�], SA.Miktar, SA.[Birim Fiyat]
from Sipari�ler As S 
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No]=SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]
order by M.No /*toplamda 4 tablo ba�lam�� oldum. art�k kodumu �al��t�rd���mda her bir �r�nden ka�ar tane ald�klar�n� ve birim fiyatlar�n� g�rebiliriz.*/


/*ayn� koda ek olarak ben iki s�tunu �arp�p bunlar�n toplam tutarlar�n� g�rmek istersem bu bir seletc komutudur ve bunu en �ste yazmam gerekir.
as diyerek de normalde tablomda olmayan bu veriye isim verip kodumun ��kt�s�na eklyebilirim. Bu �ekilde birim fiyat �arp� miktar ile toplam harcama
tutar�m� bulabilirim.*/
select S.[Sipari� No], Ad +' '+ M.Soyad�, [Sipari� Tarihi],[�r�n No], U.[�r�n Ad�], SA.Miktar, SA.[Birim Fiyat], SA.Miktar * SA.[Birim Fiyat] AS Tutar
from Sipari�ler As S 
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No]=SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]


/*bu kodu �u �ekilde de yazabilirim okunabilirili�i artmaktad�r.*/
select S.[Sipari� No], 
Ad +' '+ M.Soyad�, 
[Sipari� Tarihi],
[�r�n No], 
U.[�r�n Ad�], 
SA.Miktar, 
SA.[Birim Fiyat], 
SA.Miktar * SA.[Birim Fiyat] AS Tutar

from Sipari�ler As S 
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No]=SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]

/*burada uygun �ekilde e�le�me yap�ld�ktan sonra sadece tek bir tablodaki uygun de�erleri de�il ba�ka tablodaki uygun de�erleri de �arpabilirim.*/



/************* GROUPBY BY  ve COUNT KULLANIMI ***************/

select [M��teri No] from Sipari�ler /*kodumun ��kt�s�n� inceledi�imde g�r�yorum ki m��teri numaralar� birden fazla kez tekrar ediyor. hepsini bir kez
g�rmek istersem yani �zetlemeke istersem group by kullanmam gerekiyor. bu y�zden m��teri no ile group by al�yorum.*/

group by [M��teri No] /*group by ile kodumu tekrar �al��t�rd���mda 47 adet sat�r�m�n 15 sat�ra d��t���n� ve verimin �zet �ekilde yani sadece unique
de�erlerinin geldi�ini g�r�yorum. burada en az 1 kere sipari� vermi� ki�ileri g�r�yorum. verilerimi tekille�tirdim burada. g�zel yan� verilerimi
tekille�tirdikten sonra �rn count gibi metodlar� kullanabilirim.*/


select [M��teri No], COUNT(*) as siparissayisi /*koduma ek olarak t�m sipari�lerin say�s�n� hesaplat�p unique de�erlerimden ka� sipari� gelmi� g�rebilirim.*/
from Sipari�ler
group by [M��teri No]
/*kodumun ��kt�s�n� inceledi�imde 1 numaral� sipari�ten 2 adet geldi�ini g�rebiliyorum. hatta buna order by da ekleyebilirim countuma g�re*/


select [M��teri No], COUNT(*) as siparissayisi /*koduma ek olarak t�m sipari�lerin say�s�n� hesaplat�p unique de�erlerimden ka� sipari� gelmi� g�rebilirim.*/
from Sipari�ler
group by [M��teri No]
order by COUNT(*) desc /* desc ile de s�ralamay� tersine �evirebilirim. yani en �ok sipari� vermi� m��teirleri azalan �ekilde s�ralayaca��m.
grouplama i�imi kolayla�t�ran bir i�lem ancak do�ru �ekilde yapmam gerekmektedir. group by yaparken select i�erisine yazmad���m bir s�tunu kullanamam
o s�tunu �ncelikle selectte yazmam gerekir illa yazacaksam ba�ka bir i�lem daha yapmam gerekiyor. ��nk� grouplamad���m �eyi tekille�tirmem gerekiyor �nce
*/


/*bunlara ek olarak m��teri adlar�n� g�r�nt�leyerek ki�ilerin tutarlar�n� bulabilmek i�in inner joinle tablolar� birle�tirmem laz�m.*/
select M��teriler.Ad +' '+ M��teriler.Soyad� as musteriadi_soyadi, COUNT([M��teri No]) AS siparissayisi
from Sipari�ler
inner join M��teriler on Sipari�ler.[M��teri No] = M��teriler.No
Group by M��teriler.Ad +' '+ M��teriler.Soyad�
Order by M��teriler.Ad +' '+ M��teriler.Soyad�
/*kodumun ��kt�s�n� inceledi�imde sipari� veren ki�ilerin adlar�n� ve ki�ilerin ka� adet sipari� verdiklerini g�rebiliyorum, �imdi de soyad� ekleyece�im
groupby ve order byda da select k�sm�nda yazd���m �eyi yazmam gerekiyor ki ��kt�s�n� hata almadan g�rebilelim. no colulmn name dedi�i i�in de select
k�sm�nda as diyerek bir kolon ismi verebilirim.*/




/*buna ek olarak her bir m��terinin toplam ka� tllik sat�n alma i�lemi yapt���n� bulaca��m. buradaki sorgumu sadece isim ve soyisim olarak 
tekille�tirmem gerekiyor. adsoylar�m ile tuttar bilgim bana ana olarak laz�m olan bile�enlerim. yapt���m i�lem burada �ncelikle ihtiyac�m olan
t�m veri setini haz�rlamak sonras�nda ise �zetleme i�lemine ge�mek.*/
select M.Ad +' '+ M.Soyad� as ADSoy, SUM( Miktar * [Birim Fiyat]) as Tutar
from Sipari�ler as S
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No] = SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]

group by M.Ad +' '+ M.Soyad�
/*burada art�k her bir m��terinin ad� ve soyad�n�n yan�nda toplam ne kadarl�k bir sat�n alma yapt���n� g�rebiliyorum. burada isim ve soyisimi tekil
hale getirirken unutmamam gereken �ey tablonun yan�ndaki say�sal de�erlere bir �eyler yapmam laz�m ki sorgum tekil hale geldi�inde de �al��s�n.
yani �zetleme i�lemini �al��abilir �ekilde yapmam laz�m. buraad tutarlar� toplad�k. aliye berberin toplam �demesini bulduk. bu �demeyi ka� �r�n i�in
yapt���n� bulaca��m �imdi de.*/

select M.Ad +' '+ M.Soyad� as ADSoy, SUM( Miktar * [Birim Fiyat]) as Tutar, COUNT(S.[Sipari� No]) as Siparis_Adet
from Sipari�ler as S
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No] = SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]

group by M.Ad +' '+ M.Soyad�
/*count ekleyerek ka� adet sipari� i�in bu �demeyi yapt���m� bulabildim. sipari� no mu sayd�rd�m. yani aliye berber 2410 tllik �demeyi 4 �r�n sat�n alarak
yapm��. ancak ka� adet sipari�te bunlar� yapm��lar bilmiyorum. bunu da sipari� noyu benzersiz �ekilde sayd�r�rsam ka� adet sipari�te bunlar� sat�n alm��lar
bulabilirdim.distinc eklmeme gerekiyor tekrardan countuma */

select M.Ad +' '+ M.Soyad� as ADSoy, 
 SUM( Miktar * [Birim Fiyat]) as Tutar, 
 COUNT(S.[Sipari� No]) as Siparis_Adet,
 COUNT(Distinct S.[Sipari� No]) as Siparis_Sayisi
from Sipari�ler as S
inner join M��teriler as M on S.[M��teri No] = M.No
inner join [Sipari� Ayr�nt�lar�] as SA on S.[Sipari� No] = SA.[Sipari� No]
inner join �r�nler as U on U.No = SA.[�r�n No]

group by M.Ad +' '+ M.Soyad�

/*�imdi de g�r�yorum ki aliye berber bu sipari�leri 4 adet �r�n i�in 2 kere sipari� vererek 2410 tl �deme yapm��. burada distinct demem sipari� 
nolar� benzersiz olarak sayd�rmama yar�yor. yani unique de�erleri sayd�rd�m. buna ek olarak toplam ciroyu da bulabilirim.*/

select SUM((Miktar * [Birim Fiyat])) from [Sipari� Ayr�nt�lar�] /*burada da birim fiyatlar�n toplam�n� bularak, toplam sipari�lere
ne kadar �dendi�ini buldum. 68.137 tl tuttu.*/

/* �dev: 
1) �r�n kategorilerine g�re toplam cirolar� bulun
2) en fazla ciro yap�lan 3 ili bulun.*/


/*Veri k�melerinin birle�tirilmesi i�in ba�ka y�ntemler de var bunlar genelde stok say�lar�n� bulmak i�in veya geriye y�nelik baz� i�lemler i�in 
kulllan�labiliyor. A ve B �zerinden g�sterilecek.*/

select * from A

select * from B /* verilerimi inceliyorum*/


/*intersect*/
select A_Id from A
intersect
select B_Id from B
/*interesect demek A'daki A_Id ile B'deki B_Id'nin kesi�im k�mesini bana g�r�nt�le demek yani intersect iki k�menin kesi�iminde kullan�l�r ve ortak
olanlra� bana g�sterir. intersect ingde kesi�im demek.*/


/*except*/
select A_Id from A
except
select B_Id from B
/*except de ayn� mant�kla �al���r ancak iki k�me aras�ndaki farklar� g�stermek i�in kullan�l�r. A'n�n B'den fark�n� bana verir. tam tersini isteseydim
e�er yani bnin a dan fark�n� isteyseydim byi yukar� a y� a�a�� yazmam gerekiyordu. burada a�a�� ve yukar� yazmak �nemlidir.*/


/*union*/
select A_Id from A
union
select B_Id from B
/*union da iki k�meyi birle�tirmek istedi�imde kullanaca��m bir sorgu. ancak her de�eri bir kez tekrar eder ayn�lar� tekrar yazmaz ancak iki kere yazd�rmam
gereken durumlarda union all �eklinde yazmam gerek. bu �ekilde t�m de�erleri birle�tirerek yazar.*/
select A_Id from A
union all
select B_Id from B

/*burada alabilece�imiz hatalar say� ile metini birle�tiremeyece�ime dikkat etmem laz�m. �rn id alan� ile ad alan�n�.*/




/*NE ��E YARAR �NNER JO�NDEN FARKLI OLARAK*/


/*�nce stok hareketlerimi bir g�r�nt�leyeyim*/

select * from [Stok Hareketleri] /*hareket no, �r�n no, hareket t�r� ve miktar var. birisi sto�a giri� yap�yor di�eri ��k�� yap�yor. union all� kullanaca��m,
burada hareket t�r� 1ler sto�a gelenler di�erleri ��kanlar. �imdi i�lemelerime ba�layaca��m incelemek i�in bu �ekilde bu kod ile t�m verime g�z atm�� oldum.*/


select [�r�n No], [Miktar]
from [Stok Hareketleri]
where [Hareket T�r�]=1 /*bu �ekilde �al��t�rd���mda hangi �r�nden ne kadar sat�n ald���m g�z�k�yor where =1 ile s�n�rlad�m. a�a��da tersini yap�yorum*/


select [�r�n No], [Miktar]
from [Stok Hareketleri]
where [Hareket T�r�]=2 /*burada da satt�klar�m�n adedi g�z�k�yor. bu iki sorguyu union all ile birle�tirip miktar� -1 ile �arparsam kar��ma eksili de�erler
gelecek ve iki tabloyu tam anlam�yla birle�tirip stoktan d��enleri g�rm�� olaca��m. a�a��da yapal�m*/



select [�r�n No], [Miktar]
from [Stok Hareketleri]
where [Hareket T�r�]=1 

union all /*bu �ekilde yaparak stoktan d��enleri g�rebilece�im. tablonun a�a��s�ndakiler stoktan d��en adetler.*/

select [�r�n No], ([Miktar]*-1)
from [Stok Hareketleri]
where [Hareket T�r�]=2
/*bunlar�n direkt olarak stoklar�n� bulmak istersem ne yapar�m? sqlde bir sorguyu parantez i�ine al�rsak bu art�k bir veri k�mesi oldu�u anlam�na gelir.
bu sorguyu en yukar�dan a�a��ya ba��na select yazarak parantez i�ine al�rsam stoklar�n� bulmu� olurum. yapal�m a�a��da tekrar.*/

select *
from
	(select [�r�n No], [Miktar]
	from [Stok Hareketleri]
	where [Hareket T�r�]=1 

	union all 

	select [�r�n No], ([Miktar]*-1)
	from [Stok Hareketleri]
	where [Hareket T�r�]=2) as stok /*art�k stok isminde bir tablom var ve ben bunlar� �r�n nolara gr�re grouplayarak stoklar�m� bulabilirim. her 
	�r�n bir kere yer als�n diyerek toplama ��karma i�lemlerini otomatik olarak yapt�rm�� oluyorum ve �r�n no yu da select k�sm�nda g�r�nt�lemem gerekiyor
	tabii.*/


select [�r�n No], Sum(Miktar) as Stok_miktar
from
	(select [�r�n No], [Miktar]
	from [Stok Hareketleri]
	where [Hareket T�r�]=1 

	union all 

	select [�r�n No], ([Miktar]*-1)
	from [Stok Hareketleri]
	where [Hareket T�r�]=2) as stok

	Group by [�r�n No]

/*union all�n en temel kullan�mlar�ndan biri budur. sum ile de miktarlar� toplatarak stok adedimi bulmu� oldum. mesela stoklar� 0a d��enler var
bunlar da stoklara geldi�i kadar sat�ld��� anlam�na gelmektedir. yani birle�tirme i�lemlerini genelde stok hesaplama i�leri i�in kullan�r�m ya da 
tablolar� birle�tirmem gereken yerlerde. bu ancak inner join gibi iki tabloyu birle�tirmek gibi de�il, iki veri k�mesini alt alta birle�tirmek gibi
d���n�lmeli. join ise ba�lama i�lemi yapmaktad�r.*/



/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 6. HAFTA ------------------------------------*/

/*�dev sorgular�
1)kategorilere g�re toplam cirolar� g�sterece�im*/ 
select Kategori, SUM(Miktar * [Birim Fiyat]) as Ciro
from [Sipari� Ayr�nt�lar�] as SA
inner join �r�nler as U on SA.[�r�n No] = U.No
group by Kategori
/*burada ilk olarak selecte y�ld�z koyarak from k�sm�m� yazd�m hangi tablolarda �al��acak ve birle�tireceksem onlar� yazd�m sonras�nda select k�sm�m� 
yazd�m ve kategorilerin toplam cirolar�n� istedi�im i�in miktar ve birim fiyat� �arp�p sum�n� ald�m ve groupbyda da hata almamak i�in ayn� zamanda 
verilerimi �zetlemi� oldum. bu �ekilde sorhum tamamlanm�� oldu. ekstra olarak ka� farkl� m��teri taraf�ndan al�nd���n� varsayaraksak sorguyu nas�l
geni�letiriz.?*/


select Kategori, SUM(Miktar * [Birim Fiyat]) as Ciro,
COUNT(Distinct [M��teri No]) as UniqueMusteri
from [Sipari� Ayr�nt�lar�] as SA
inner join �r�nler as U on SA.[�r�n No] = U.No
inner join Sipari�ler as S on S.[Sipari� No] = SA.[Sipari� No]
group by Kategori
/*burada daha sonras�nda ka� farkl� m��terinin bu kategorilerden sat�n alma yapt���n� g�rm�� oldum. unutmamam gerekiyor yine gruplarken bir �eyleri
�zetlemem �rn toplamam ya da sayd�rmam laz�m yoksa g�r�nt�leyemem.*/


/*2)en y�ksek ciroyu yapan �� �ehiri bulaca��m*/
select Top(3)
M.�ehir,
SUM(Miktar * [Birim Fiyat]) as Ciro

from 
[Sipari� Ayr�nt�lar�] as SA
inner join Sipari�ler as S on S.[Sipari� No] = SA.[Sipari� No]
inner join M��teriler as M on M.No = S.[M��teri No]
group by M.�ehir
order by Ciro desc
/*burada yine ilk olarak ba�lamam gereken tablolar� inner join ile birbirine ba�lad�m sonras�nda select k�sm�m� yazd�m burada �ehirleri g�rmek istedi�im
i�in �ehirleri ve yine en y�ksek cirolar� g�rmek istedi�im i�in birim fiyat ve miktar� �arpt�r�p ad�na ciro diyerek yazd�rd�m en ba�a da ilk 3 istedi�im
i�in top3 yazd�m sonras�nda s�ralamam� ters �evirmek i�in ciro desc dedim ve �zetlemek istedi�im yani unique de�erleri g�rmek i�in de �ehire g�re gruplad�m.
e�er �rn ortalamas�na bakmak istersem de sum yerine sadece avg yazard�m. i�erisine de cast ... as real yazarsam ger�ek veri t�r�n� g�sterir �rn int de�il
bu�uklu da g�sterir g�relim.*/

select
M.�ehir,
AVG(CAST(Miktar as real)) as Ciro

from 
[Sipari� Ayr�nt�lar�] as SA
inner join Sipari�ler as S on S.[Sipari� No] = SA.[Sipari� No]
inner join M��teriler as M on M.No = S.[M��teri No]
group by M.�ehir
order by Ciro desc /*�eklinde ��kt�mda orijinal veriyi yani bu�uklu de�erlerini de g�sterir. bazen hata olmamas� i�in bu�uklara dikkat etmem gerekiyor.
de�erleri a�a�� yuvarl�yor yani asl�nda sadece tam say� de�erlerini al�yor.*/


/*------TAR�H FONKS�YONLARI----------------------------------------*/
/*veri setimdeki tarih verilerini b�lerek ayr� ayr� s�tunlar olu�turmay� g�rece�im.*/
/*buradaki kodumda �nce ay ve y�l de�erlerini ay�rm���m sonras�nda toplam miktar ve ortalam miktar� hesapalt�p ard�ndan miktar� birim fiyat ile �arp�p
toplam ciro ve ortalama ciroyu hesaplatm���m ve hepsinin s�tunlar�na isim vermi�im. ard�ndan kullanmam gereken tablolar� inner join ile birle�tirmi�im
ard�ndan da y�l ve aya g�re guplayarak verimi �zetlemi�im.*/

Select YEAR(S.[Sipari� Tarihi]) as YIL,
MONTH(S.[Sipari� Tarihi]) as AY,
SUM(SA.Miktar) as top_miktar,
AVG(SA.Miktar) as ort_miktar,
SUM(SA.[Birim Fiyat] * SA.Miktar) as Top_ciro,
AVG(SA.[Birim Fiyat] * SA.Miktar) as Ort_Ciro

from Sipari�ler as S inner join [Sipari� Ayr�nt�lar�] as SA
on S.[Sipari� No] = SA.[Sipari� No]

Group by Year(S.[Sipari� Tarihi]), Month(S.[Sipari� Tarihi])


/*---------------------------------SQL ��LEVLER� ----------------------------------*/

/*choose i�levi*/

select [Durum No],
CHOOSE([Durum No]+1, 'Yeni', 'Faturaland�', 'Sevk Edildi', 'Kapat�ld�')
as Durum
from Sipari�ler
/*basit mant�ksal bir fonksiyonumuz. chooseda ba�takine g�re bir art�rarak kar��s�ma hangi kelime denk geliyorsa onu yazar. durum no 0 ise yeni
durum no 1 ise faturaland�, durum no 2 ise sevk edildi durum no 3 ise kapat�ld� yazar.*/

/*IFF i�levi*/
/*pythondaki if ile ayn� mant�kla �al���r burada iki � ile yaz�l�r ve e�er i�levi i�in kullan�l�r. bir ko�ul yaz�l�r. programlama dilleriyle kar��t�rmamak
laz�m orada i�lemler bir d�ng� ile yap�l�r ancak burada i�lemler her sat�r i�in ayr� ayr� yap�l�r. �rn:*/

Select [Sat�nalma Sipari�i No], 
IIF([Sat�nalma Sipari�i No] is null,
'Stoktan Kar��land�',
cast([Sat�nalma Sipari�i No] as nvarchar(10)) + 'nolu sipari� ile temin edildi')
as TedarikDurumu
From [Sipari� Ayr�nt�lar�]
/*e�er sat�nalma sipari�i no k�sm�nda veri bo�sa kar��s�na stoktan kar��land� yazmak istedi�imizi s�yledik ve sonras�nda e�er bu alan doluysa o numaray�
yazd�r�p yan�na nolu sipari� ile temin edildi yazmas�n� istedim ve bu s�tuna  da tedarik durumu dedim ve bunlar� sipari� ayr�nt�lar� tablosundan ald�m. 
iiften sonra virg�l koydum buradaki virg�l else k�sm�na kar��l�k geliyor yani iif do�ru de�ilse di�er se�ene�i �al��t�r�yor. burada casti kullanmam�n
sebebi bir veri t�r� de�i�ikli�i yapmakt�r. sat�nalma sipari�i no benim i�in normalde int bir de�er ancak s�zc�klerle birle�tirece�im i�in onu nvarchar
de�erime d�n��t�r�yorum.*/


/*CASE komutu-----------------------------------------------------*/
/*iif komutunda bir ko�ul yazabilirken case komutum ile birden fazla ko�ul yazabilirim. yaz�m k�ral�: casei yaz�yorum ifadeyi veriyorum sonras�nda da 
ko�ullar�m� veriyorum �rn de�er 1 ise de�er1i yazd�r de�er 2 ise de�er2yi yazd�r gibi ko�ullar veriyorum. en sonunda da bu durumlar �al��mad�ysa else
komutumu yaz�yorum. sonuna da end yaz�yorum. �rn:*/

select[Durum No],
case [Durum No]
When 0 then 'Yeni'
When 1 then 'Faturaland�'
When 3 then 'Sevk Edildi'
When 9 then 'Kapat�ld�'
Else 'Hata'
End as Durum

from Sipari�ler
/*sipari�ler tablosundaki durum no e�er 0sa yeni, 1se faturaland�, 3se sevk edildi, 9sa kaapt�ld� e�er bunlar de�ilse hata yaz diyorum ve end as diyerek
bu s�tuna da durum ismini veriyorum ve bunu da sipari�ler tablosundan �a�r�yorum. case kullan�m�n�n tamam� da g�r�ld��� gibi selectte bir ifade olarak
yaz�l�yor. daha karma��k �ekillerde de kullanabilirim.*/

select Miktar * [Birim Fiyat] as Ciro,
case when Miktar * [Birim Fiyat] < 1000
then 'az'
when Miktar * [Birim Fiyat] < 10000
then 'orta'
when Miktar * [Birim Fiyat] < 100000
then 'y�ksek'
else '�ok y�ksek'
end as CiroDurum

from[Sipari� Ayr�nt�lar�]

/*burada da yine froma kadar t�m sorgular�m� select �zerinde yazd�m ve case when ile ba�lad�m sonras�nda miktar ve birim fiyat�m�n �arp�m�n�n 1000den 
k���k olmas� durumunda ne yaz�lmas� gerekti�ini s�yledim, ard�ndan 10.000den k���k olma durumunda ne yaz�lmas� gerekti�ini s�yldim, ard�ndan da 100.000den
k���k olmas� durumunda ne olmas� gerekti�ini s�yledim. en sonda hi�bir ko�ul sa�lanmazsa ne yaz�lmas� gerekti�ini s�yledim ve end ile case kullan�m�m� 
bitirdim as diyerek de cirodurum ismini verdim ve hangi tablodan al�nmas� gerekiyorsa from ile onu yazd�m. bu sefer caseten sonra direkt bir ifade vermedim
ard�ndan direkt when yazd�m orada yazd�m. daha karma��k �ekilde de kullanabiliriz �rn:*/

select Sipari�ler.[M��teri No], COUNT(distinct Sipari�ler.[Sipari� No]),
SUM(Miktar * [Birim Fiyat])as Ciro,
case 
when sum(Miktar * [Birim Fiyat]) < 1000 then 'az'
when sum(Miktar * [Birim Fiyat]) < 10000 then 'orta' 
when sum(Miktar * [Birim Fiyat]) < 100000 then 'y�ksek'
else '�ok y�ksek'
end as CiroDurum

from[Sipari� Ayr�nt�lar�]
inner join Sipari�ler 
on Sipari�ler.[Sipari� No] = [Sipari� Ayr�nt�lar�].[Sipari� No]
group by Sipari�ler.[M��teri No]
order by Ciro desc /* her m��terinin toplam harcamas�n� bulduktan sonra ciro durumlar�n� da yazd�m tabii sonra, ka� tane sipari� verdiklerini de buluyorum,
yani �rn 28 numaral� m��teri 3 tane sipari� verip 15432,50 tl ciro yap�p y�ksek ciro durumunda yer alm�� diye yorumlamam gerekiyor.*/

/*kitaptan say�sal fonksiyonlar� g�steriyor abs, sign, pi, ceiling, sqrt, square gibi... ayn� kodlar� str fonksiyonlar i�in de i�ledik sayfa 137,138*/
/*tarih i�levleri i�in de veri t�rleri var. time, datetime,date, small datetime, datetime2 en ayr�nt�l�s�. datetiff nas�l �al��t���n� bil.
varl�k ili�ki �emas� �ok �nemli bunun nas�l yap�ld���n� ��ren. �zetlenmi� de�erlerin k�s�tlanmas� i�lemi i�in de having kullan�l�r. having �ztlenmi�
veriyi ks��tlamak i�in kullan�l�r. biri sat�r biri grup bazl� ks��tlama yapmak i�in kullan�l�r. group by �n wherei gibi �al���r. bunu da ��ren.
havingi 7. haftada anlat�yor �rn notlar� zaten s�n�rlam���md�r ancak bir de derim ki not ortalamas� 50nin �st�nde olanlar gelsin gibi bir 
ekstra s�n�rlama yazabilirim (sayfa 144te var) ve having order bydan sonra yaz�l�r.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 7. HAFTA ------------------------------------*/

/*datename: tarih t�r�ndeki bir verinin bir b�l�m�n� isim olarak geri d�nd�r�r. bunlara ek olarak month = m �eklinde k�saltmalar var kullan�rken bil.
dated�ff komutu iki tarih aras�ndaki fark� hesaplamak ile ilgili bir komut. �rn:*/

select DATEdIFF(HH,'2015/06/19 12:10', '2016/06/19 00:10') /*dated�ff komutu belirtilen iki tarih aras�ndaki fark� hesaplamak i�in kullan�l�r ve 
ba��nda verdi�im parametreye g�re hesaplar. benim verdi�im parametre yani hh saat olarak hesaplamas�n� sa�lar. iki saat aras�ndaki saat fark�n� hesaplad�.
dk bulmak isteseydim mi demem gerekirdi. kitapta 149. sayfa dated�ff, dateadd, isdate komutlar�  bunlar� bil. isdate bir metin t�r�n�n i�eri�inin
tarih veri t�r�ne uygun mu olup olmad���na bakar.*/


/*ALT SORGULAR-------------------------------*/
/*Alt sorgular asl�nda parantez i�erisine bir veri k�mesini hapsetmek oluyor. union all yaparken yapm��t�m. from bunlar�n en temel kullan�m alanlar�ndan
bir tanesi. alt sorgular tablo yani veri kayna�� olarak kullan�labilir.*/


/*ALT SORGULARIN TABLO OLARAK KULLANILMASI-------------------------------*/
Select [�r�n no], Miktar
from [Stok Hareketleri]
where([Hareket T�r�]=1)
 
union all /*bu sorguyu zaten yazm��t�m hat�rl�yorum.*/

Select [�r�n no], Miktar
from [Stok Hareketleri]
where([Hareket T�r�]=2)

/*bu sorguyu bir parantezler i�erisine al�p bir tablo haline getirece�im. ondan �nce de tarihleri g�rebilmek i�in
hareket olu�turulma tarihini ekleyece�im. g�relim:*/

select * from
(Select [�r�n no], Miktar, [Hareket Olu�turulma Tarihi] as Tar
from [Stok Hareketleri]
where([Hareket T�r�]=1)
 
union all 
Select [�r�n no], Miktar*-1, [Hareket Olu�turulma Tarihi]
from [Stok Hareketleri]
where([Hareket T�r�]=2)) as stok /*belirli bir tarih aral���ndan sonraki k�sm� g�rmek istersem bunu where ile s�n�rland�rabilirim.*/


/*where ile stok hareketlerinnin tarihini s�n�rland�rd���m.*/
select * from
(Select [�r�n no], Miktar, [Hareket Olu�turulma Tarihi] as Tar
from [Stok Hareketleri]
where([Hareket T�r�]=1)
 
union all 
Select [�r�n no], Miktar*-1, [Hareket Olu�turulma Tarihi]
from [Stok Hareketleri]
where([Hareket T�r�]=2)) as stok

where Tar < '2006-04-01' /*bu tarihten b�y�k olanlar gelmedi k���k olanlar geldi. �imdi de adet bilgilerini toplatabilirim. 
a�a��da*/

Select [�r�n No], Sum(Miktar) as Stok from 

(SELECT [�r�n No], Miktar,[Hareket Olu�turulma Tarihi] as Tar
  FROM [Stok Hareketleri]
   WHERE ([Hareket T�r�] = 1)
   UNION ALL
   SELECT [�r�n No], Miktar *-1,[Hareket Olu�turulma Tarihi]
   FROM [Stok Hareketleri]
  WHERE ([Hareket T�r�] = 2)) As Stok

where Tar< '2006-04-01'

group by [�r�n No] /*groupby ile de �r�n noya g�re gruplam�� oldum. ek olarak sorgunun alt sorgu olmas� i�in parantezler aras�nda olmas yeterli olur.*/


/*i�ecekler kategorisinde en az bir kere al��veri� yapm�� olan m��terilerin numaras�n� yazd�rmam gerekiyor.*/

Select M.No from
M��teriler as M
inner join Sipari�ler as S on S.[M��teri No]=M.No
inner join [Sipari� Ayr�nt�lar�] as SA on SA.[Sipari� No]=S.[Sipari� No]
inner join �r�nler as U on U.No=SA.[�r�n No]

Where U.Kategori = 'i�ecekler'
group by M.No /* cansunun kodlar� bunlar ekstradan m��teriler tablosuna ba�l�yordu. buna gerek yok i�eri�i de�i�tirmedi ancak do�ru.*/
/*ek olarak bizden i�ecek sat�n alan m��terilerin toplam cirosunu hesaplama gerekiyor �imdi de. toplam ciro laz�m sadece.*/


Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipari� Ayr�nt�lar�] SA
inner join Sipari�ler as S on Sa.[Sipari� No]=S.[Sipari� No] /*m��teirlerin toplam cirosu. select ile toplam fonksiyonunu kullanarak ciro bulmak i�in kulland���m
form�l� kulland�m yani miktar * biirm fiyat. from ile sipari� ayr�nt�lar� ile sipari�ler tablosunu birle�tirerek istedi�im sonucu elde ettim. ancak bu t�m m��teirler 
i�in ge�erli ben sadece yukar�daki m��teriler i�i bunu hesaplamak istiyorum. bu y�zden m��terileri s�n�rlamam gerekiyor. where eklemem gerekiyor. a�a��ya eklenmi�
halini yaz�yorum tekrardan.*/


Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipari� Ayr�nt�lar�] SA
inner join Sipari�ler as S on Sa.[Sipari� No]=S.[Sipari� No]
where S.[M��teri No]=1 /*m��teri no 1 olanlar ile s�n�rlamak istiyorsam bu �ekilde diyebilirim. 1 ve 6 demek istiyorsam in kullanmam laz�m. a�a��da o �ekilde yazd�m.
1 numaral� m��teri 2410 tl harcam��*/

Select 
SUM(SA.Miktar * SA.[Birim Fiyat])
from
[Sipari� Ayr�nt�lar�] SA
inner join Sipari�ler as S on Sa.[Sipari� No]=S.[Sipari� No]
where S.[M��teri No] in (1,6,7,10,11,12,27,28,29) /*1 ve 6. m��teriler toplamda 10418 tllik harcama yapm��. di�er ki�ileri de ekliyorum 1 ve 6dan sonra, 
istedi�imiz cevaba ula��yoruz. bundan sonra ba�ka kategorideki �r�nleri de ekleeybilirim ve bu sorguyu bir alt sorgu olarak kullanaca��m. a�a��da var: */


Select 
SUM(SA.Miktar*SA.[Birim Fiyat])
From 
[Sipari� Ayr�nt�lar�] SA
inner join  Sipari�ler S on Sa.[Sipari� No]=s.[Sipari� No]
where S.[M��teri No] IN
(
Select
S.[M��teri No]
From 
[Sipari� Ayr�nt�lar�] SA
inner join  Sipari�ler S on Sa.[Sipari� No]=s.[Sipari� No]
inner join  �r�nler U on U.No=Sa.[�r�n No]
Where U.Kategori='��ecekler'
Group By S.[M��teri No]
Intersect
Select
S.[M��teri No]
From 
[Sipari� Ayr�nt�lar�] SA
inner join  Sipari�ler S on Sa.[Sipari� No]=s.[Sipari� No]
inner join  �r�nler U on U.No=Sa.[�r�n No]
Where U.Kategori='Soslar'
Group By S.[M��teri No]
)

/*iki tane veri k�mesinin kesi�im k�mesini bulmak istiyorum bu y�zden intersect ile iki veri k�mesini birle�tirece�im. soslar ve i�ecekler kategorilerini birle�tirmi�
olaca��m ve alt sorgu �eklinde �al��t�raca��m. sonu� olarak 9027 ��kt� bu da soslar ve i�ecekler kategorisinde sat�n alm�� m��terilerin esi�im k�mesini tekil 
olarak elde ettim ve bunlar�n toplam cirolar�n� sadece bu ki�iler i�in hesaplatt�m. buna intersect yerine union deseydim �o�alacakt� bu sefer en az 1 kere i�ecekler
veya soslar kategorisinden al��veri� yapm�� ki�ileri getirip bunlar�n toplam cirolar�n� bulacakt�k.*/


/*�orbalar alan�nda hi� sat�n alma yapmam�� m��terileri bulmam gerekiyor. */

Select
SUM(SA.Miktar*SA.[Birim Fiyat])
From
[Sipari� Ayr�nt�lar�] SA
inner join Sipari�ler S on Sa.[Sipari� No]=s.[Sipari� No]
where S.[M��teri No] IN
(
Select
S.[M��teri No]
From
[Sipari� Ayr�nt�lar�] SA
inner join Sipari�ler S on Sa.[Sipari� No]=s.[Sipari� No]
inner join �r�nler U on U.No=Sa.[�r�n No]
Where U.Kategori ='�orbalar'
Group By S.[M��teri No]
) /*serdar�n kodlar yukar�da yazd���m kodun ayn�s� neredeyse. sadece hububat yerine �orbalar �eklinde de�i�tirildi. sadece altaki kodu �al��t�r�nca �orba alan m��terileri
g�rebiliyorum. �imdi de hi� m��teri tablomda al��veri� yapmam�� biri var m� bunu bulmak istiyorum. a�a��da: */

select * from M��teriler
where 
No not in
(
select [M��teri No] 
from Sipari�ler
group by [M��teri No] 
)
/*bu sorgum sat�n alma i�lemi uygulam�� m��terilerimi getiriyor ban ve no in kodunun i�erisine not eklersem sadece bana bu kodun de�ilini getirecek ve daha �nce hi�
sat�n alma i�lemi yapmam�� olan m��terilerimi bulmu� olaca��m. burada dikkat etmem gereken �ey bir �eyin de�ilini bulabilmek i�in not kullanmam�z gerekti�idir.*/

/*sipari�ler tablosunda sipari� numaras� olup da sipari� ayr�nt�lar�nda olmayan biri var m� diye bakaca��m �imdi de, ��nk� bu da olabilir. sipari� verme i�lemi
yar�m kalm�� olan da olabilir.*/

select [M��teri No]
from Sipari�ler
where
[Sipari� No] in(

select Distinct [Sipari� No]
from [Sipari� Ayr�nt�lar�])
group by [M��teri No]/*sipari� ayr�nt�lar� tablosunda sipari�i olanlar bunlar, tekrardan kontrol ettim iki taraftan da ��kt�lar� kontrol etmi� oldum
bunu da gidip bir alt sorgu yapaca��m yani parantezler i�erisine al�p �st�ne kodlar�m�  yazaca��m. a�a��da tekrar yaz�yorum. hi� sipari� vermeyenleri tekrar
bulaca��m. 2 numara bir �ncekinde olmamal� a�a��dakinde olmal�.*/

Select * from M��teriler
Where No Not In (
Select [M��teri No] From Sipari�ler
where [Sipari� No] IN ( Select Distinct [Sipari� No] from [Sipari� Ayr�nt�lar�])
group By [M��teri No]) 
/*bu kodda da hi� sipari� vermemi�ler var kontrol etmek istedi�im i�in tekrar ba�k �ekide yazd�m.*/


/*exist kullan�m�--------------------------------------*/

select �irket
from M��teriler as M
where Notlar exists
(seelct * from Sipari�ler AS altsorgu
where altsorgu.[M��teri No] = M. [No])
/*bu kodun �st k�sm� asl�nda �irket isimlerini g�r�nt�l�yor, ancak where ile alt sorguyla ili�kilendiriyor bu da
alt sorgudaki m��teri no ile �st sorgudaki m��teri noyu e�itliyor. yani alt taraftaki sipari�ler tablosundaki
m��teri no ile �st taraftaki m��teri noyu e�itledi�i zaman sadece sipari�ler tablosunda yer alan m��terilerin 
�irketlerini getirmi� oluyor. ayr�ca �u an yazd���m alt sorgu tek ba��na �al��abilen bir sorgu de�il. ��nk� myi yukar�da
tan�mlad�m. a�a��da ise o m yi s�n�rlad�m. not exists  olmamas� gerekti�i anlam�na geliyor sorgu her sat�r i�in �al���yor e�er yoksa
siliyor. exists olmas� gerekti�i anlam�na geliyor not ile kullan�nca olmamas� gerekti�i anlam�na geliyor. yani exists ifadesi
alt tablo ile �st tablodaki m��teri numaralar�n� birbirine ba�layarak s�n�rl�yor not dedi�imde de orada olmayan m��terileri 
g�r�nt�le demi� oluyorum. alt sorgu ile �st sorguyu da bu �ekilde birbirine eba�layabiliriz.*/



/*alt sorgular i�in daha karma��k bir sorgu inceleyelim:*/

SELECT [Sipari� No],[�r�n No], Miktar, (Select AVG(Miktar)FROM [Sipari� Ayr�nt�lar�] WHERE [�r�n No]=a.[�r�n No] ),

Miktar-(Select AVG(Miktar) FROM [Sipari� Ayr�nt�lar�] WHERE [�r�n No]=a.[�r�n No] ) 
AS Fark
FROM [Sipari� Ayr�nt�lar�] as a
/*bu sorgu sipari� ayr�nt�lar� tablosunda her bir sat�r� getiriyor ancak bunu getirirken sat�lan �r�n�n miktar�n� getiriyor 
o sipari�te, onun d���nda miktardan sipari� ayr�nt�lar�nda ilgili �r�n�n ortalama miktar�n� hesaplatarak o miktardan
��kart�yor. bu da �u demek, bug�ne kadar bu �r�nden her defas�nda ka� kere sipari� verilmi�se onun ortalamas�ndan ne kadar yukar�da
ne kadar a�a��da bunu hesaplat�yor.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 8. HAFTA ------------------------------------*/


/*INSERT INTO komutu ile ba�layaca��z bir veriye veri ekleme ile ba�layaca��z. e�er bir dataya veri eklemek istiyorsak bunun yaz�m kural� �u �ekilde:
insert into dedikten sonra hangi veri taban�na ekleyeceksem onu s�ylemem gerekiyor. ��nk� emir c�mlesi kurdu�umu unutmamam gerekiyor. �rn a tablosunun i�ine bak�p 
a tablosuna ekleyelim. tablo ismimi s�yledikten sonra, A tablosuna ekleyece�imi s�yledim ben, tablonun hangi alanlar�na veri ekleyece�imi s�ylemem gerekiyor. A tablosunda
A_Id ve Ad alanlar� var bu alanlar� parantez i�inde yazmam gerekiyor. bunlar�n i�ine ekleyece�im i�in bunlar� yazd�m.*/


select * from A /*a tablosuna veri eklemeye �al��aca��m insert into ile.*/
insert into A (A_Id, Ad) /*insert intodan sonra hangi veriye ekleyece�imi s�yledim sonras�nda da hangi tablolara ekleyece�imi s�yledim parantez i�erisinde.*/
values (10,'on') /*e�er elle veri eklemek istiyorsam values demem laz�m. valuesdan sonra yine parantez i�erisinde e�er int de�er gireceksem normal str de�erse t�rnak i�inde yazmam gerek*/

select * from A /*burada veri eklerken dikkat etmem gereken �eylerden biri s�tun say�s� kadar veri eklemek zorunda oldu�umdur, biri bo� kals�n diyerek veri ekleyemem veya
s�tun say�s�ndan fazla olacak �ekilde veri ekleyemem. e�er yanl��l�kla ayn� veriden iki tane eklersem dikkat etmem gereken �ey sadece birini silmenin bir yolunun olmad���d�r,
yaln�zca ikisini birden silersem olabilir ��nk� ba�ta primeri key i�aretlemedim. bu olmad��� i�in sqlinde iki veriyi ay�rt edecek bir yolu yok. illa bo� b�rakmak 
istiyorsam null da ekleyebiliyorum.*/

/*valuesa ek olarak select yani bir se�me sorgusu da ekleyebiliyorum. ayn� kod �zerinde g�relim.*/


select * from A 
insert into A (A_Id, Ad) 

select B_Id, Name from B /*se�me sorgusu ile bu �ekilde normal bir select sorgusu yaparak veri ekleyebiliyorum. values yerine selectle yazm�� oluyorum 
bu �ekilde birden fazla veri ekleyebiliyorum*/

select * from A


/*Peki kendi tablosunun i�eri�ini kendi tablosuna ekleyebilir miydik?*/

select COUNT(*) from A 
insert into A (A_Id, Ad) 

select B_Id, Name from B /*count ile g�r�ld��� �ekilde t�m de�erlerini sayd�rabiliyorum. buna ek olarak kendisini eklemek istedi�imde kendi s�tunlar�n� yazmam gerekiyor*/

select COUNT(*) from A
/*-------------------------------------*/
select COUNT(*) from A 
insert into A (A_Id, Ad) 

select A_Id, Ad from A 

select COUNT(*) from A
/*kendi tablosunu kendisine ekledi�imde g�r�ld��� gibi veri 2 kat�na ��km�� oluyor. yani kendisinin bir kopyas�n� kendisine eklemi� oluyor. birka� kere f5e basarak
s�rekli veriyi 2 kat�na ��kard�m ve toplam da 13 milyon sat�rl�k bir veri elde ettik ve bunu excelde yapamazd�k. �imdi de �zetlerine bakaca��m.*/

select Ad, COUNT(*) from A
group by Ad /*bu kodumu �al��t�rd���mda da hepsinden ka�ar adet �retildi�ini g�rebiliyorum.  �ok fazla verim oldu�u i�in �imdi onlar� temizlemem gerekiyor.
delete komutum ile temizleyece�im ancak where ile bir ko�ul koymam gerekiyor.*/

select distinct A_Id from A

delete from A
/*where A_Id <7*/



select distinct A_Id from A /*hepsini silmek i�in wherei tamamen bo�altt�m.*/


/*veri giri�i olan baz� komutlar var sayfa kitap160�nda cast, convert gibi onlar� bil.*/


/*VER� D�ZENLEME ��LEVLER�*/
/*veriyi d�zenleme i�levleri �nemli bizim i�in bunlar� bilmem laz�m.*/

/*�ncelikle �imdi bir tane m��teriler tablosundan bir tane �al��mak i�in m tablosu olu�turaca��m.*/

Select * INTO M from M��teriler /*bu �ekilde m tablosunu olu�turdum olmu�. t�m s�tunlar� se�tim ve into diyerek t�m s�tunlar�m�n kay�tlar�n� yapt�m ve from ile m��teriler
tablomdan almas�n� sa�lad�m m diyerek de tabloma m tablosu ismini verdim. �imdi tablomu �a��raca��m.*/

select * from M /*�rn 7. sat�rdaki yani nosu 7 olan sat�rdaki ismi g�ncelleyebiliriz.*/

update M 
set Ad = 'Ay�e Mine' /*direkt olarak bu kodu bu �ekilde �al��t�r�rsam t�m verilerimin ismi ay�e mine olurdu buna bir where ile s�n�rlama eklemem gerekiyor.*/
where No=7 /*nosu 7 olan diyerek sadece 7. s�radaki isme g�ncelleme yapabilirim ya da ad� mine olanlar diyebiliriz ancak bu sefer t�m ad� mine olanlar g�ncellenir.*/

select * from M /*bu �ekilde sadece nosu 7 olan sat�r� ay�e mine �eklinde update etmi� oldum. bbu komutta bu �ekilde kullan�l�yor. dikkat etmem gereken �ey sak�n bir
s�n�rlama yazmadan kullanmamam gerekti�idir. �imdi de e posta adresini g�ncelleyelim g�r�ld��� gibi yok ancak ekleyece�im.*/

update M
set [E-posta Adresi] = 'simdilik@yok.ama.sanane.len.com'
where No=7

select * from M /* g�r�ld��� gibi olmayan sat�ra da g�ncelleme i�lemi yapabiliyorum. e�er e�ittir yerine > deseydim t�m m��terilerimin e posta adresi ayn� olacakt�
ancak 7den b�y�k olanlar�n yani ko�ulu sa�layanlar�n. bunu yapaca��m sonras�nda bu durumu d�zeltece�im. bu durum bir fatal errordur. olmamas� gerekir.
bu durumu d�zeltmek i�in rollback kullan�labilir ancak biz kullanamayca��z. biz bu tabloyu m��teriler tablosundan ald�k ve yine tablomu m��teriler tablomdaki do�ru
bilgiler ile g�ncelleyerek hatalar�m� giderebilirim. yani tablolar�m�n orijinalleri ile �al��mak yerine ekstradan bir kopyas�n� olu�turarak �al��maya dikkat etmem gerekiyor.
update komutunda select sorgualr� gibi ba�ka tablolardan verileri kullanabildi�ime dikkat etmem gerekiyor. bunun i�in fromu kullanmam yeterli ve inner join eklemem laz�m.
m��teriler ile m yi ba�lamam laz�m. yapal�m.*/

update M 
set Ad = M��teriler.Ad
from M��teriler inner join M on M.No=M��teriler.No /*m��teriler ile m tablosunu nodan ba�lad���m i�in asl�nda arkada bir select sorgusu yapacak g�ncelleyece�i tablonun
nosu ile m��teriler tablosunun nosunu birbiri ile e�itleyecek ve kar��s�na gelen adlar� m tablosundaki adlar�n yerine yerle�tirecek.*/

select * from M


/*�imdi yapmam gereken �eyler:

-- m��teriler tablosuna Ciro isminde para birimli bir alan ekleyiniz.*/

alter table [dbo].[M��teriler] add ciro money /*bu �ekilde m��teriler tablosuna ciro isimli s�tunu eklemi� oldum*/
select * from M��teriler

/*-- Ciro alan�na her bir m��terinin sipari�lerinden 
--hesaplanan ciro verisini g�ncelleyiniz.
burada yapmam gereken �ey direkt bir �ey eklemek yerine bir i�lem bar�nd�r�yor buu y�zden bunu biraz daha alt sorgu �eklinde yazmam daha sa�l�kl� olacak ��nk� bir
tutar hesaplanacak. sonra bu tabloya isim verip inner joinle ba�lar�m.*/
select * from M��teriler

Update M��teriler
Set  ciro=c.Ciro
From 
(
Select S.[M��teri No], Sum([Birim Fiyat]*Miktar) As Ciro
From Sipari�ler S inner join [Sipari� Ayr�nt�lar�] SA 
on S.[Sipari� No]=SA.[Sipari� No]
Group By S.[M��teri No]

) As C
inner join  M��teriler On 
C.[M��teri No] = M��teriler.No


select * from M��teriler

/*bu sorguda demek istedi�im �ey t�m m��ter i�in �rn 1 numaral� m��teriyi bul kar��s�na toplam ciroyu yap��t�r. art�k m��terilerin bir i�lemi varsa null de�erler
yerine veriler geldi ancak baz�lar� bo� kalabilir. dikkat etmem gereken �ey i� sorguda hesaplamalar yap�p �st sorgu ile e�le�tirip �st sorguya g�re nerede
e�le�tirilmesi gerekiyorsa onunla e�le�tirip hesaplad���m cirolar� her m��terinin s�ras�n� bulup kar��s�na cirolar� g�ncellemek oluyor.*/


/*harf notlae�yla ilgili olan �devle oyaland� sonunda. worddeki sorguyu buraya yap��t�r�p yeni bir db olu�turuyorlar.*/



/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 9. HAFTA ------------------------------------*/

/*�devin ��z�m�yle ba�lad�*/


/*DE���KEN ��LEMLER�----------------------------------------*/

/*de�i�ken tan�mlamak i�in ayn� programala man�t��� gibi yukar�dan a�a�� �al��ma mant��� vard�r. mutlaka @ i�areti ile ba�alamal�d�r. bu yap� sayesinde bir sorgudaki
yap�y� al�p ba�ka bir sorguda kullanabiliriz gibi i�lemler yapabiliriz. programalama mant��� ile hareket edece�im. �rnek yapal�m*/

Declare @Bolum_No int;
Set @Bolum_No=1 
/*declare komutunu de�i�ken tan�mlamak i�in kullan�yorum. declare dedikten sonra @ i�areti koyarak de�i�kenimi tan�mlamak i�in isim veriyorum ve hangi t�rde veri
olmsa� gerekti�ini s�yl�yorum sonra a�a��s�na set diyerek de�i�kenimi yaz�yorum ve almas� gereken de�er int t�r�nde bir de�er oldu�u i�in int bir de�ere e�itliyorum.
art�k bu benim i�in �al���p bitene kadar bir de�i�kendir. select ile se�ebilirim. �rn*/

select @Bolum_No /*g�z�kmesi i�in tan�mlama ile ayn� anda �al��t�r�lmal�. ayn� zamanda print ile de kullanabilirim. bu da messages k�sm�nda g�z�k�r*/
print 'merhaba dunya'
print @Bolum_No


/*bir de�i�keni tablo olarak da yaratabiliriz bunun i�in yine ayn� mant��� kullan�yorum ekstra olarak sadece table demem gerekiyor.*/
declare @A Table(
id int identity(1,1),
Ad nvarchar(10)) /*bu de�i�ken art�k A isimli bir tablo oldu ve iki tane s�tunu oldu, bunlardan birincisi id ve int de�erinde de�er al�rken ikincisi s�zel bir de�er
alabiliyor ve s�tun ismi Ad ve en fazla 10 harflik bir de�er alabiliyor. art�k bu A tablosuna de�er atayabilirim.tekrardan hat�rlatmakta fayda var bu tablo biz 
�al��t�rd���m�z s�rece burada kullan�l�yor. identity ile 1 er 1er artmas�n� s�yledim*/

insert into @A (Ad)
values ('bir') /*insert into diyerek tablomun @ ile ad�n� s�yleyip daha sonras�nda hangi s�tununa eklemek istedi�imi s�yl�yorum ve sonras�nda da values diyerek
ne de�er ekleyeceksem parantezler i�erisine yaz�yorum.*/

insert into @A (Ad)
values ('iki')

select * from @A

insert into @A (Ad)
select Ad from @A

select * from @A /*tablolar�ma yine kendisini ekledim ve bir eklenmi� bir de eklenmemi� hallerini yazd�rd�m. buradaki �rnek �ok mant�kl� olmasa da tablo yap�s�n� bilmek
gerekiyor bu tablolar olu�turulup kullan�l�p daha sonras�nda da silinebiliyorlar.tan�mlad���m de�i�kenler programlama dillerindeki gibi kay�t alt�na al�nm�yorlar
o y�zden tan�mlad���m de�i�kenlerle yazd���m kodlar� ayn� anda �al��t�rmam gerekiyor.*/


/*AKI� KONTROL�-----------------------*/
/*ak�� kontrolleri i�in if else yap�s�n� kullan�yoruz bu bildi�imiz if else yap�s�d�r. burada bu sefer iki f ile yazmayaca��m normal bildi�im �ekilde if else �eklinde
kullanaca��m yine e�er anlam�nda kullan�lmaktad�r.*/
/*buradan sonra okul dbyi kullanarak devam ettik.*/
use Okul
Declare  @Ogrsay int

Select @Ogrsay=Count(*) From Ogr

IF @Ogrsay>50
 Print '��renci Say�s� 50 den fazla'
   else 
   Print '��renci Say�s� 50 den az'

/*de�i�kenimi olu�turuyorum ve bunlar� sayd�r�yorum sonras�nda e�er say� 50den fazlaysa ��renci say�s� elliden falza yazd�rmas�n� s�yl�yorum
de�ilse az yazd�rmas�n� istedi�imi s�yl�yorum. ifin en kolay basit �ekilde kullan�m� bu �ekilde ve buna benzer �ekillerde olabilir. g�r�ld��� gibi art�k bir 
sonu� �retmiyor ��nk� select ile sorgumu se�medim. bu sorgu sadece ��renci say de�erine veri aktar�yor o kadar. bu y�zden bana herhangi bir sorgu sonucu d�nd�rm�yor
sadece sorgu sonucunu bir de�i�kene at�yor.*/


/*Case yap�s�------------------------------*/
/*��rendi�imiz case yap�s�yla ayn� sadece burada programlama i�erisinde ba�lanma sa�l�yor. �rn yazmad� bunun �rnleri 2. kitapta mevcut.*/


/*While yap�s� var yine ayn� mant�k �art sa�land��� s�rece sorgunun �al��mas�na devam edilen bir yap�. kitaptan bir �rn yazal�m.*/
DECLARE @sayac INT
DECLARE @toplam INT
SET @sayac=1 
SET @toplam=0 
WHILE (@sayac<=100)
 BEGIN
 Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 END
 Print @sayac
 Print @topla
 /*neden �al��mad� anlamad�m hocan�n kodu azc�k daha farkl� sadece bakacam sonra, burada da yine continue ve break komutlar� �al���yor. ekstra �rn:*/

  DECLARE @sayac INT
 DECLARE @toplam INT
 SET @sayac=1 
SET @toplam=0 
WHILE (@sayac<=100)
 BEGIN
 Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 If @toplam >3000 
BREAK
 ELSE 
CONTINUE
 END
 Print @sayac
 Print @Toplam

 /*bu sefer �al��t�.*/


 /*GOTO YAPISI--------------------------------------*/

/*ET�KET verilerek kullan�l�yor buna bir �rn kitaptan:*/

DECLARE @sayac INT
 DECLARE @toplam INT
 SET @sayac=1 
SET @toplam=0 
Basla: 
Set @toplam=@toplam+@sayac
 Set @sayac=@sayac+1
 If  (@sayac<=100) 
GOTO basla
 Print @sayac
 Print @Toplam /*birden y�ze kadar olan say�lar�n toplam�n� while ile de�il de goto ile hesapl�yor.*/



/*D�NAM�K SORGULAR -----------------------------------------------*/
/*dinamik sorgularda sorguyu kendimiz elde edip �al��t�raca��z.*/

DECLARE @tabloAdi VARCHAR(50)
SET     @tabloAdi='Ogr'
DECLARE @Sorgu VARCHAR(50)
SET     @Sorgu='SELECT * FROM '+@tabloAdi
EXECUTE(@Sorgu)

/*�al��t�rd���m gibi direkt dosyan�n i�i geldi. burada dikkat etmem gereken �ey dinamik sql sorgular�
yaparken excute komutunu kullanabildi�imdir. buralar� gidip kitaptan okuyabilirsin.*/


/*�MLE� ��LEMLER�---------------------------------------------------*/

/*Zaman zaman hoca imle� i�lemlerini kulland�. �rn tarihler aras�ndaki zaman fark�n� hesaplamak i�in  bunu kulland�k. �u anda da �rn okuldaki t�m ��rencilerimizin
isimlerini yan yana bir text olarak elde etmek istedi�imiz d���nelim. �al��ma mant��� hedef bir de�i�ken belirleme ve t�m st�rlarda buna uygun i�lemi yapmak �zerine
oluyor. �ok farkl� kullan�m ama�lar� olabiliyor. ��renciler tablosu i�in yap�yoruz*/

DECLARE @ADSOY nvarchar(100)
DECLARE @HEDEF nvarchar(max)

--�mle� veri k�mesi i�in tan�mlan�r.
DECLARE Ogr_cursor CURSOR FOR
SELECT Adsoy from Ogr Order By ADSOY Desc 
--�mle� a��l�r
Open Ogr_cursor 

-- ilk kay�t talep edilen veri k�mesi s�ras� ile okunur.
--(Ad ve Cins de�i�keni sorgu ile ayn� s�rada olmal� )

FETCH NEXT FROM ogr_cursor INTO @ADSOY /*��renciler tablosundaki de�erleri adsoy de�i�kenine aktar�yoruz cursor da sat�r aralar�nda gezinecek olan �eye denir. teker teker sat�rlar� yaz�yorum*/

SET @HEDEF= 'S�n�f�m�zda ' 
SET @HEDEF=@HEDEF + @ADSOY 

FETCH NEXT FROM ogr_cursor INTO @ADSOY

--While d�ng�s� ile son kayda gelinceye kadar birer birer ilerleme kurgulan�r.

WHILE @@FETCH_STATUS = 0
Begin
   
   SET @HEDEF=@HEDEF +', '+  @ADSOY -- Her bir veri metne eklenir. 

   FETCH NEXT FROM ogr_cursor INTO @ADSOY--Soraki kayda iler-lenir.
END
SET @HEDEF= @HEDEF +' adl� ��renciler bulunmaktad�r.' 
Select @HEDEF
--�mle� kapanarak silinir.
Close ogr_cursor
deallocate ogr_cursor


/*bu �nitede de�i�ken tan�mlamak ve tablo yap�s�n� ��renmek �nemli. strude prosed�r ve triggerlar� ��renece�iz bir de.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 10. HAFTA ------------------------------------*/

/*stored prosed�r. asl�nda sakl� yordamlar demek oluyor. i�eride �n tan�ml� olarak yap�lan i�lemlerden bahsediyor. ilk stored prosed�r�m�z� yazabiliriz.*/
/*il ismini girelim o ildeki m��terilerin toplam cirosunu bulup gelen bir stored prosed�r yazal�m. programmabilitynin alt�na stored procedureye gelip sa� t�klay�p
new dersem ban gidip stored procedure yazmak i�in bir �ablon a�acak ayn� html ! demek gibi. sonras�nda o �ablon �zerinden devam ederek kendi prosed�r�m� olu�turabilirim.*/

/*stured prosed�rler g�ncelleme yapt�klkar�nda 0 ve 1 gibi �eyler d�nd�r�rler ya da baz� mesajlar d�nd�rebilirler. CREATE procedure dedikten sonra prosed�r�m�n 
ismini yazmam gerekiyor. daha sonras�nda parantez i�inde yazarak @ ile yazmam gerekiyor. burada de�i�ken gibi kullan�yorum ancak bu bir parametre i�levi g�recek.
@ ile yazd�ktan sonra da bir isim veriyorum ve veri t�r�n� yaz�yorum veri t�r�n� yazd�ktan sonra e�er stured prosed�r� geri d�nd�receksek yan�na out yaz�yoruz. sonras�nda
bu paramtrem �al��acak ve benim prosed�r�m�n i�erisine bir parametre gelecek. daha sonras�nda ciro ile ilgili sorgumu begin alt�na yazmam m�mk�n. biz onu ilgili select
sorgusunu s�n�rlamak i�in kullanaca��z.*/

Alter PROCEDURE ILCIROSU 
	(@iladi nvarchar(50) )

AS
BEGIN
	
	select sum([Sipari� Ayr�nt�lar�].Miktar * [Sipari� Ayr�nt�lar�].[Birim Fiyat]) as Ciro
	from Sipari�ler
		inner join [Sipari� Ayr�nt�lar�] on Sipari�ler.[Sipari� No] = [Sipari� Ayr�nt�lar�].[Sipari� No]
		inner join M��teriler on Sipari�ler.[M��teri No] = M��teriler.No

where (M��teriler.�ehir = @iladi or @iladi='T�m')

return 1

END
GO /*bu benim stured prosed�r�m. beginden sonra da istedi�im ciro ile ilgli olan sorgumu yazd�m. en sonuna da bir geri d�nd�rme istedi�im i�in return 1 yazd�m.
end ve go ile de bitirdim. kodu �al��t�rd�ktan sonra programmabilitynin alt�nda ilcirosu prosed�r�m� direkt g�rebiliyorum. bunu �al��t�rmak i�in sa� t�klayarak execute
dedimeme gerekiyor. execute dedikten sonra bana direkt olarak bir pencere a�acak ve bu pencereden baz� ayarlamalar yapmam gerekecek. a��lan pencerede yapmak istedi�im
sorgu i�in bir il yazmam gerekcek �rn orada sinop yazd�ktan sonra bana o ilin cirosunu hesaplayarak d�nd�recek. o pencereyi a�mak i�in; sa� t�kla execute dedikten sonra
pencere a��lacak a��ld�ktan sonra value k�sm�na sinop yaz�yorum. yeni bir pencere a��ld� ve bu pencerede �al��an kodlar ��kt� asl�nda bu kodlar da direkt olarak �al��abiliyor
ancak bu kodlara bir parametre yazmak gerekiyor. yani ben burada bu parametereleri de�i�tirerek istedi�im tablolar� otomatik olarak hesaplatabilirim. kodlarda da sinopun
oldu�u yer parametre ve buradaki �ehri de�i�tirince ba�ka �ehirlerin de hesaplamalar� yap�labiliyor. �ehri de�i�tirip f5 yapt���mda yeni hesaplama olu�mu� oluyor. mutlaka
begin ve end bloklar� var bunlar� yazmam gerekiyor. begin ve end bloklar� aras�ndaki kodlar �al��t�r�lacak. biz bir tablo istemi�tik bir tablo geldi e�er iki tablo isteseydik
iki tablo gelecekti.*/

/*bir�ok stored prosedur olu�turulabilir farkl� farkl� �rn dinamik bir stured prosed�r de olu�turulabilir. ek olarak execute dedikten sonra a��lan penceredeki exec ifadesi
prosed�r� �al��t�ran komuttur. bunu bilmekte fayda var. e�er parametre g�ndermeden bunu yazmak isteseydik yine hi�bir �ey yazmadan da bunu �al��t�rabilirdik. ek olarak
t�m dedi�imde t�m ciroyu nas�l g�stermesini sa�lard�m bunu yapmam laz�m. t�m dedi�imde t�m illerin cirosunu bana g�sterecek �ekilde kodlar� g�ncellemem laz�m. where
sat�r�nda de�i�iklik yapmam gerekir. burada �yle bir g�ncellem yapaca��m ki t�m ifadesini yazd���mda bana t�m illerin cirosunu hesaplayarak d�nd�recek. where k�sm�nda
or diyerek bir de @iladi=T�m �eklinde bir g�ncelleme yaparsam ikinci bir se�enek olarak parametreyi t�m verdi�imde t�m illerin cirosunu hesaplayacak. bunu kontrol
etmek i�in de sadece select k�sm�n� �al��t�rd���mda zaten t�m illerin cirosunu hesaplad���n� g�rebiliyorum. */



/*�imdi de �yle bir stored prosed�r yazaca��m ki tablo ad�n� g�nderdi�imde bana sat�r say�n� veren bir prosed�r yazaca��m. �u �ekilde olu�turmam gerekiyor.*/

alter procedure satirsayisi
(@tabloadi nvarchar(50))

as 
begin

declare @ST int
declare @sorgu nvarchar(1000)

	set @sorgu = 'select COUNT(*) from' + @tabloadi
	execute(@sorgu)

	select @st=count(*) from M��teriler

return @st
end
/*hocada 3 sat�r bende 1 sat�r veri ��kt� baya az veri varm��. ta��y�c�lar yerine m��teriler tablomu �al��t�rd�m. n ile bo�luk b�rakmad���m i�in olmu� bo�lu�u b�rak�nca
d�zeldi. m��terilerin alt� �izili olmas�n ra�men �al��t�. bu �ekilde dinamik tablolar olu�turabiliyorum. i�ime yarayan �ekillerde bu �ekilde otomatik olarak hesap
yapacak tablolar olu�turabilirim. burada bilmem gereken ekstra �eyler create procedure, alter procedure ve drop procedure �eklinde. bunlar� yazmay� bilmem gerekiyor ve
bu procedurlere default de�er de verebiliyorum yani parametre vermeden de �al��malar�n� sa�layabiliyorum. procedurelerdeki top5 de bir procedure ve s�ralama yap�yor.
bildi�in fonksiyon yazar gibi yazabiliyorum. sakl� yordama olan kodlar� oku ve �al��. 

-----------say� de�erli fonksiyonlar. ki�inin do�um tarihini g�nderdi�imizde ki�inin ya��n�
hesaplayan bir fonksiyon yapabiliriz. create fonciton ile yaz�l�yor. return ile bir geri d�n�� yapt�r�l�yor. fonksiyonlar da basit*/

Create function Yas(@Dogumyili int)
returns int
as 
begin
	declare @hesap int
	  set @hesap=YEAR(GETDATE()) - @Dogumyili /*burada year getdate sistem tarihini y�la d�n��t�r ve getir demek oluyor. ve bundan do�um y�l�n� ��kar�yor.*/
	return @hesap /*hesap k�sm�n� d�nd�r�yorum.*/
end


/*stured prosedure gibi bu sefer fonksiyon yazm�� olduk. programmabilitynin alt�nda bu sefer functions k�sm�nda scalar valued k�sm�nda yazd���m fonksiyonu g�rebiliyorum.
art�k bu fonksiyonu kullanabilirim yas fonksiyonumun alt�nda parametrelerimi de g�rebiliyorum. yani art�k stured prosed�r�m� �u �ekilde olu�turabilirim fonksiyonumu
kullanarak.*/

select dbo.Yas(1975) /*g�r�ld��� gibi fonksiyonum ya� fonksiyonunun i�erisine parametre girince y�l�m�za g�re olan ya�� hesapl�yor.tabi bunu bu �ekilde kullanmak i�in
yazmad�k bunu gidip bir tabloda kullanabilirim. �rn say�sal bir s�tunla deneyelim.*/

select dbo.Yas([No] + 1900) /*t�m s�ra nolar�n 1900 ekleyip ya� fonksiyonuma g�nderdim. ve sonu�lar� ya� hesaplanm�� gibi elde edece�im.*/
	from [Northwind].[dbo].[M��teriler] /*sonu�lar 122 ya� varm�� gibi ba�lay�p a�a�� do�ru devam ediyor.*/



/*tablo de�erleri fonksiyonlar. burada da yine bir parametre var ve bu parametreye g�re bir tablo d�nd�r�yor. �rn:*/

create function fn_calisanlarlistele()
returns table
as 
return select * from Calisanlar  /*�al��mad� bakaca��z.*/




/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 11. HAFTA ------------------------------------*/

/*�dev 3 ile ba�lad� dersin ba��nd a�dev 3 � �z��yor. �dev3 �nemli tek ba��na bi ��zemey �al�� s�nav �al��mas� gibi olacak. dersin son yar�m saatinde hoca
kendi de soru �retti onlara bak. 10.dkda da var.*/





/*----------------------------------------------------------------------------------------------------------------
******************************************************************************************************************
------------------------------------------------------------------------------------------------------------------*/


/* SQL SORGULARI �ALI�MA 12. HAFTA ------------------------------------*/
/*triggerlar s�navda dahil de�il ancak genel k�lt�r a��s�ndan bilmek �nemli. triggerlar otomatik rapor olu�turma ve veri tutarl�l���n� sa�mak i�in �nemlidir.
triggerlar bir olay oldu�unda kendi kendini �al��t�ran stured prosed�rlerdir. tetikleme olay� veriye bir tablo eklenmesi olabilir. tabloya veri ekleme veya silme
olabilir. �imdi birka� tane trigger yazaca��z. i� hayat�nda trigger yazmak gerekli olabiliyor. bu y�zden bilmekte fayda var. m��teriler tablosunda �al��al�m. m��teriler
tablosuna geldim ve sa� t�klad�m, script table as dedim, create dedim, new query editor window diyorum ve bu sayede m��teriler tablomun bir kopyas�n� olu�turmu� oluyorum.
hoca bunun kodunu chate att� o y�zden new query a��p deniyorum. denedi�im kodu buraya yep��t�rac��m. i�te kod:*/

CREATE TABLE [dbo].[M_Yedek](
 [No] [int] ,
 [�irket] [nvarchar](50) NULL,
 [Soyad�] [nvarchar](50) NULL,
 [Ad] [nvarchar](50) NULL,
 [E-posta Adresi] [nvarchar](50) NULL,
 [�� Unvan�] [nvarchar](50) NULL,
 [�� Telefonu] [nvarchar](25) NULL,
 [Ev Telefonu] [nvarchar](25) NULL,
 [Cep Telefonu] [nvarchar](25) NULL,
 [Faks Numaras�] [nvarchar](25) NULL,
 [Adres] [nvarchar](max) NULL,
 [�ehir] [nvarchar](50) NULL,
 [Eyalet/�l] [nvarchar](50) NULL,
 [Posta Kodu] [nvarchar](15) NULL,
 [�lke/B�lge] [nvarchar](50) NULL,
 [Web Sayfas�] [nvarchar](max) NULL,
 [Notlar] [nvarchar](max) NULL,
 [Ekler] [varchar](8000) NULL,
 [ciro] [money] NULL)

 /*birka� tane trigger daha azaca��m�z i�in bir tane daha M_Eklenen �eklinde bir trigger yazaca��z.*/

 CREATE TABLE [dbo].[M_Eklenen](
 [No] [int] ,
 [�irket] [nvarchar](50) NULL,
 [Soyad�] [nvarchar](50) NULL,
 [Ad] [nvarchar](50) NULL,
 [E-posta Adresi] [nvarchar](50) NULL,
 [�� Unvan�] [nvarchar](50) NULL,
 [�� Telefonu] [nvarchar](25) NULL,
 [Ev Telefonu] [nvarchar](25) NULL,
 [Cep Telefonu] [nvarchar](25) NULL,
 [Faks Numaras�] [nvarchar](25) NULL,
 [Adres] [nvarchar](max) NULL,
 [�ehir] [nvarchar](50) NULL,
 [Eyalet/�l] [nvarchar](50) NULL,
 [Posta Kodu] [nvarchar](15) NULL,
 [�lke/B�lge] [nvarchar](50) NULL,
 [Web Sayfas�] [nvarchar](max) NULL,
 [Notlar] [nvarchar](max) NULL,
 [Ekler] [varchar](8000) NULL,
 [ciro] [money] NULL,
 tarih datetime)

 /*ilk �nce silinme trigger� yazaca��z. otomatik olarak silme i�lemi yapacak. �ncelikle trigger�n �ablonunu g�relim. bir trigger yazarken mutlaka bir tabloya ba�lamam�z�
 gerekiyor ��nk� bir oly tan�mlayaca��z. o y�zden m��teriler tabloma gelip art�ya bas�yorum alt�nda yer alan trigger k�sm�na sa� t�klay�p new trigger diyorum. 
 bana hemen �ablon bir yaz�m kural� penceresi a��l�yor zaten. haz�r olarak beni oraya g�nderiyor. trigger�mdan ye�il yorum sat�rlar�n� kalabal�k yapmamas� i�in
 kald�r�yorum ve �ncelikle bir isim veriyorum. yazd���m trigger �ablonu a�a��da sonra g�ncelledi�imiz halini de yazaca��m a�a��ya.*/


CREATE TRIGGER <Schema_Name, sysname, Schema_Name>.<Trigger_Name, sysname, Trigger_Name> 
   ON  <Schema_Name, sysname, Schema_Name>.<Table_Name, sysname, Table_Name> 
   AFTER <Data_Modification_Statements, , INSERT,DELETE,UPDATE>
AS 
BEGIN
	SET NOCOUNT ON;
END
GO


/*trigger ilk olarak a��ld���nda bu halde olu�mu� oluyor. daha sonras�nda a�a��daki hale getiriyorum.*/


CREATE TRIGGER Trg_Musteri_Silme /*bu k�s�mda trigger�ma di�er nesneler ile kar��mamas� i�in isim trg ile ba�layan bir isim verdim*/
   ON  M��teriler /*bu k�s�mda trigger�m� tablo i�in yazd���m i�in m��teriler tablomu yazmam gerekiyor.*/
   AFTER DELETE,UPDATE> /*buradaki after edat� befaore da olabilir after da olabilir. after kullan�l�r genelde yani bir i�lem
   bizim yazd���m�z koda g�re bir silinme i�lemi yap�ld�ktan sonra bunu otomatik olarak �al��t�racak. afterdan sonra delete, update ve insert olabiliyor. biz �u an
   deleteyi kullanaca��z. �u an �ablonum haz�r. trigger �ablonum bu �ekilde olmal�.*/
AS 
BEGIN

	SET NOCOUNT ON;

END
GO

/*-----------------------------**********---------------------a�a��da dersin kalan�nda �al��t���m komutlar� koyuyorum.*--------------------------**********-----*/

CREATE TRIGGER Trg_Musteri_Silme /*bu k�s�mda trigger�ma di�er nesneler ile kar��mamas� i�in isim trg ile ba�layan bir isim verdim*/
   ON  M��teriler /*bu k�s�mda trigger�m� tablo i�in yazd���m i�in m��teriler tablomu yazmam gerekiyor.*/
   AFTER DELETE /*buradaki after edat� befaore da olabilir after da olabilir. after kullan�l�r genelde yani bir i�lem
   bizim yazd���m�z koda g�re bir silinme i�lemi yap�ld�ktan sonra bunu otomatik olarak �al��t�racak. afterdan sonra delete, update ve insert olabiliyor. biz �u an
   deleteyi kullanaca��z. �u an �ablonum haz�r. trigger �ablonum bu �ekilde olmal�.*/
AS 
BEGIN
	
INSERT INTO [dbo].[M_Yedek]
([No],[�irket],[Soyad�],[Ad],[E-posta Adresi],[�� Unvan�],[�� Telefonu],[Ev Telefonu],[Cep Telefonu],
[Faks Numaras�],[Adres],[�ehir],[Posta Kodu],[Web Sayfas�],[Notlar],[Ekler],[ciro], tarih)


SELECT [No],[�irket],[Soyad�],[Ad],[E-posta Adresi],[�� Unvan�],[�� Telefonu],
[Ev Telefonu],[Cep Telefonu],[Faks Numaras�],[Adres],[�ehir],[Eyalet/�l],[Posta Kodu],[�lke/B�lge],
[Web Sayfas�],[Notlar],[Ekler],[ciro],GETDATE()
FROM deleted /* m��teriler yerine buraya deleted diyece�im. bu tablodan al�nan verilerle gidip m��teriler tablosunda silinen k�s�mlar� yedekleyecek.*/


END
--*****************************************************************************************************
-- hocan�nki �al��t� benimki �al��mad� baakacaaazzz a�a��daki hocan�nki.

CREATE TRIGGER Trg_Musteri_Silme
   ON  M��teriler
   AFTER DELETE
AS 
BEGIN



  INSERT INTO [dbo].[M_Yedek]
           ([No],[�irket],[Soyad�],[Ad],[E-posta Adresi],[�� Unvan�],[�� Telefonu],[Ev Telefonu]
,[Cep Telefonu],[Faks Numaras�],[Adres],[�ehir],[Eyalet/�l],[Posta Kodu],[�lke/B�lge],[Web Sayfas�]
,[Notlar],[Ekler],[ciro],tarih)

SELECT [No],[�irket],[Soyad�],[Ad],[E-posta Adresi],[�� Unvan�],[�� Telefonu],[Ev Telefonu]
,[Cep Telefonu],[Faks Numaras�],[Adres],[�ehir],[Eyalet/�l],[Posta Kodu],[�lke/B�lge],[Web Sayfas�]
,[Notlar],[Ekler],[ciro],getdate()
  FROM deleted



END


/*bir m��teriyi silince yani silme i�lemi yap�ld�ktan sonra bu i�lemi geri almak pek m�mk�n olmuyor. yani m��teriyi sildikten sonra yedek tablosuna atan bir sorgu 
yazaca��m. yani bu tetiklendi�inde silinen sat�r� al�p oraya eklemek istiyorum. silme i�lemleri asl�nda deleted tablosunun i�erisinde saklan�yor. ben de silinen k�sm�
bu tablodan al�p ilgili yere ekleyece�im. ben de gidip m_yedek tablosuna insert yapaca��m. m_yedek tabloma gelip sa� t�klad�m, script table as dedim, insert to dedim,
new query editor dedim ve bana bir pencere a��ld�. insert into k�sm�n� ve s�tun isimlerini al�p begin k�sm�na yap��t�r�yorum, sonra da bir select  sorgusu yazaca��m,
m��teriler tabloma geldim sa� t�klad�m, select top 1000 dedim ve oradaki select tablosunu da al�p trigger �ablonumda insert�n alt�na ekledim. ancak top 1000 k�sm�n�
sildim. sonra alta bas�l� tutup s�tun isimlerinin yanlar�ndaki bo�luklar� yukar�dan a�a��ya se�ip siliyorum ve yan yana kolay okunacak uzamayacak �ekilde tekrar yaz�yorum.
daha sonra tarih s�tununu da trigger�ma eklememk istedi�im i�in bu kodu �nce �al��t�r�yorum 'alter table [M_Yedek] add tarih datetime' bu kodla yedek tabloma tarih s�tununu
eklemi� oluyorum ve art�k trigger�ma da ekleyebilece�im. b�ylelikle verinin silinip eklenme zaman�n� da bilmi� olaca��m. art�k bunu m��teriler tablosunun alt�ndaki 
trigger k�sm�na refresh yapt�ktan sonra g�rebilece�im. bundan sonra kodumda bir de�i�iklik yaparsam creat yerine alter demem laz�m. ben bu sayfalar� kapatsam bile 
daha sonras�nda trigger�m�n �zerine gelip sa� t�kla modify desem yazd���m kod bana direkt olarak a��lacak. gerekli de��iklikleri yap�p kaydedersem art�k de��ikliklerim
kaydolmu� olacak. �imdi trigger�m� deneyece�im bakal�m �al���yor mu. �al��t� �u komutlar ile kontrol ettim:*/


select * from M��teriler /*m��terileri g�r�nt�l�youm alt�na da yede�i g�r�nt�l�yorum*/
select * from [dbo].[M_Yedek] /*m��teri no 28i silelim bakal�m nolacak*/

delete from M��teriler where No > 29

select * from M��teriler /*di�erlerine tekrar bak�yorum ne de�i�ti diye*/
select * from [dbo].[M_Yedek] /*evet trigger�m �al���yor. �al��mazsa hocan�n veriyi korumak i�in yazd��� �eylereden dolay� olmuyor yoksa olmal� ve g�r�ld��� gibi tarih
silinme verisi de gelmi�. yani art�k bir hata oldu�unda bu silinen verileri geri getirmek m�mk�n olacak. birden fazla veri silinmi� olsa bile. �imdi de inserted metodu
ile eklenen verileri de m��teriler eklenen tablosuna trigger ile ekleyece�im.*/

/*kendim bir trigger yaz�p bunu m_eklenen tablosuna koyaca��m.*/

/*m��teriler tablosunda olup m��teri eklenen M_Eklenen tablosunda olmayanlar� M_Eklenene ekleyece�iz.*/

Create Trigger Trg_Musteri_eklenen ON M��teriler
After Insert
AS
BEGIN
 insert into M_Eklenen ([No], [�irket], [Soyad�], [Ad], [E-posta Adresi], [�� Unvan�], [�� Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numaras�], [Adres], [�ehir], [Eyalet/�l], [Posta Kodu], [�lke/B�lge], [Web Sayfas�], [Notlar], [Ekler], [ciro], [tarih])
 Select                 [No], [�irket], [Soyad�], [Ad], [E-posta Adresi], [�� Unvan�], [�� Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numaras�], [Adres], [�ehir], [Eyalet/�l], [Posta Kodu], [�lke/B�lge], [Web Sayfas�], [Notlar], [Ekler], [ciro], getdate()
 From M��teriler  where no Not in (Select no from M��teriler)
END

/*�eklinde olmal� eklenen trigger�m. yukar�daki s�ralama ile alttaki s�ralaman�n ayn� do�rultuda olmas� gerekti�ini unutmamam gerekiyor yoksa yanl�� s�rayla yanl�� veriler
gider. buna dikkat etmeyi unutma. not in kulland�m yani i�erisinde olmayanlar� ancak exist ile de yap�labilir. art�k m��terilerin alt�nda trigger�m 1ken 2 oldu. art�k
ne zaman bir veri ekleme i�lemi yapsam direkt olarak buraya da otomatik olarak eklenecek. m��teriler edit top200 diyerek tablomu a��p elle veri ekliyorum ve bakal�m
trigger�m �al��acak m� g�relim. sorgumda select no from m��teriler yerine M_Eklenen olmal�yd� ancak bunu alter ile d�zeltece�im sorgumda yanl�� var. d�zeltiyorum.
*/

ALTER Trigger [dbo].[Trg_Musteri_eklenen] ON [dbo].[M��teriler]
After Insert
AS
BEGIN
 insert into M_Eklenen ([No], [�irket], [Soyad�], [Ad], [E-posta Adresi], [�� Unvan�], [�� Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numaras�], [Adres], [�ehir], [Eyalet/�l], [Posta Kodu], [�lke/B�lge], [Web Sayfas�], [Notlar], [Ekler], [ciro], [tarih])
 Select                 [No], [�irket], [Soyad�], [Ad], [E-posta Adresi], [�� Unvan�], [�� Telefonu], [Ev Telefonu], [Cep Telefonu], [Faks Numaras�], [Adres], [�ehir], [Eyalet/�l], [Posta Kodu], [�lke/B�lge], [Web Sayfas�], [Notlar], [Ekler], [ciro], getdate()
 From M��teriler  where no Not in (Select no from M_eklenen)
END

/*bu sefer eklenen veriler gelmi�. trigger�m �al���yor. edit top200 diyerek m_eklenen tablomu g�zlemledim ve i�erisinde veri oldu�unu g�rd�m.*/

/*�imdi de m��teriler tablosunda bir g�ncelleme oldu�unda m_eklenen tablosunda m��terilerin �irket ad� ad� ve soyad� g�ncellensin i�lemini yapaca��m.*/

Create Trigger Trg_Musteri_Guncelleme ON M��teriler /*triger�m�n �ablonu bu �ekilde olmal�. i�erisine de begin k�sm�na yani gerekli update sorgusunu eklemem gerekiyor*/
 After Update /*eklenmi� halini a�a��ya yaz�yorum.*/

 As
 Begin 
 
 END

/* eklenmi� hali a�a��daki.-----------------------------*/


Alter Trigger Trg_Musteri_Guncelleme ON M��teriler /*�nce creatti sonra alter yapt�m tekrar �al��t�ramayaca��m i�in.*/
 After Update

 As
 Begin
 
  -- Bu sorgu M��teriler tablosundaki 3 alan�n de�i�ikli�ini g�ncellemek i�in yaz�lm��t�r.
  UPDATE M_Eklenen
 SET  �irket =M��teriler.�irket, Soyad� =M��teriler.Soyad�, Ad =M��teriler.Ad
 FROM  M��teriler INNER JOIN          M_Eklenen ON M��teriler.No = M_Eklenen.No

 END
 /*bu �ekilde art�k bir g�ncelleme oldu�unda tablom da g�ncellenecek.*/




 /***************************************************************/
select * from M_Eklenen
select * from M��teriler

update M��teriler  
set Soyad�='T�rk' where Soyad�='�inli'


select * from M_Eklenen
select * from M��teriler

/*yukar�daki sorgular ile bir g�ncelleme i�lemi yap�p kontrol etti�imde trigger�m�n �al��t���n� g�rm�� oldum. yukar�daki sorgu m��teriler tablosundaki bir soyad�
g�ncellemesi yapmakta ve di�er kodlar tablolar� g�stermektedir.*/

/*�imdi de art�k Sipari� ayr�nt�lar� tablosunda bir sat�r eklendi�inde M��teriler tablosunda yer alan Ciro verisini g�ncelleyen tetikleyiciyi yaz�n�z �eklinde
bir trigger yazaca��m.*/

Alter TRIGGER [dbo].[Trg_ciro_deneme4] /*trigger�m� olu�turmak i�in ba�ta create dedim sonra alter dedim.*/
ON [dbo].[Sipari� Ayr�nt�lar�]
AFTER INSERT
AS
BEGIN

UPDATE M��teriler
SET M��teriler.ciro = (SELECT SUM(sa.[Birim Fiyat] * sa.[Miktar]) FROM [Sipari� Ayr�nt�lar�] sa
inner join Sipari�ler s On sa.[Sipari� No]=s.[Sipari� No]
WHERE s.[M��teri No] = M��teriler.[No]);
END;

/*trigger�m bu �ekilde olmal� kontrol etmek i�in sipari� ayr�nt�lar�na edit dedim. 80 numaral� sipari�i buldum sonra sipari�ler tablosuna ge�ip edit diyip 80 nolu sipari�e
bakaca��m. ordan da 4 numaral� m��teriye ait oldu�unu g�r�yorum. yani 4 numaral� m��teri noya sahip m��terinin verilerini kontrol edece�imi buldum.*/

select * from M��teriler 
where No=4 /*burada m��terimin cirosunu kontrol ediyorum ve buraya veri ekleyerek de�i�ip de�i�medi�ini g�rece�im. sipari� ayr�nt�lar� tabloma gidip 80noya veri ekliyorum
gidip elle verimi ekledim ve insert intodan dolay� m��terinin cirosu artm�� oldu. trigerda haat yaparsam veya herhangi bir hata olu�abilecek durum varsa 
error handling yap�lmal� ve transection yaz�lmal�.*/



/*----------------------------------DERSLER BURADA B�TT�----------------------------------*/


/*MS SQL �DEV ���N ARA�TIRILMASI �STENEN KONULAR:
1)RANK 
2)NTILE
3)DENSE_RANK
4)ROW_NUMBER 
KOMUTLARI ARA�TIRILIP NASIL �ALI�TI�I ��REN�LECEK VE NORTHW�ND VER� TABANINDA UYGULANACAK.*/