---film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.

SELECT DISTINCT replacement_cost FROM film;
--film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?

SELECT  COUNT(replacement_cost) FROM film;
--film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT DISTINCT title 	FROM film WHERE  title LIKE 'T%' AND rating='G';
SELECT COUNT(title) 	FROM film WHERE  title LIKE 'T%' AND rating='G';
--country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT DISTINCT country FROM country WHERE country LIKE '_____';
SELECT COUNT(country) FROM country WHERE country LIKE '_____';

--city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

SELECT DISTINCT city	FROM city WHERE  city LIKE 'R%' OR  city LIKE'%r';
SELECT COUNT (city)	FROM city WHERE  city LIKE 'R%' OR  city LIKE'%r';