DROP DATABASE IF EXISTS PopcornViews
	go

CREATE DATABASE PopcornViews
	go

USE PopcornViews

Create Table AppSettings
(
    Id INT PRIMARY KEY NOT NULL,
    BrandName NVARCHAR (25) NOT NULL,
    HeroTitle NVARCHAR(100) NOT NULL,
    HeroSubTitle NVARCHAR (100) NOT NULL,
    HeroImgURL NVARCHAR (MAX) NOT NULL
)
INSERT INTO AppSettings
    (Id, BrandName, HeroTitle, HeroSubTitle, HeroImgURL)
VALUES
    (2, 'FilmEvreni', 'Unutulmaz Filmler', 'Favori Filmlerinizi �zleyin', '')

CREATE TABLE Movies
(
    MovieId INT PRIMARY KEY NOT NULL,
    CategoryId INT NOT NULL,
    MovieName NVARCHAR(50) NOT NULL,
    MovieDuration INT NOT NULL,
    AboutMovie NVARCHAR (300) NOT NULL,
    Director NVARCHAR(50) NOT NULL,
    Writer NVARCHAR(100) NOT NULL,
    Star NVARCHAR(50) NOT NULL,
    ImdbPoint INT NOT NULL,
    MovieImgURL NVARCHAR(MAX),
    MovieURL NVARCHAR(MAX),
)

-- Aksiyon Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (1, 1, 'Mad Max: Fury Road', 120, 'Hayatta kalman�n ana tema oldu�u bir k�yamet sonras� aksiyon filmi.', 'George Miller', 'George Miller, Brendan McCarthy, Nick Lathouris', 'Tom Hardy', 8, '', 'https://www.imdb.com/title/tt1392190/'),
    (2, 1, 'John Wick', 101, 'Emekli bir tetik�i, sevdi�i k�pe�inin intikam�n� almak i�in harekete ge�er.', 'Chad Stahelski', 'Derek Kolstad', 'Keanu Reeves', 7, '', 'https://www.imdb.com/title/tt2911666/'),
    (3, 1, 'Kara ��valye', 152, 'Batman, Gotham �ehrini kurtarmak i�in Jokerle sava��r.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Christian Bale', 9, '', 'https://www.imdb.com/title/tt0468569/'),
    (4, 1, 'Ba�lang��', 148, 'Bir h�rs�z, insanlar�n zihinlerine fikir yerle�tirmek i�in r�yalar�na girer.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '', 'https://www.imdb.com/title/tt1375666/'),
    (5, 1, 'Matrix', 136, 'Bir hacker, ger�ekli�in ard�ndaki ger�e�i ke�feder.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '', 'https://www.imdb.com/title/tt0133093/');

-- Komedi Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (6, 2, 'B�y�k Budape�te Oteli', 99, 'Bir konsiyerj ve lobi g�revlisi, e�siz bir otel maceras�na at�l�r.', 'Wes Anderson', 'Stefan Zweig, Wes Anderson', 'Ralph Fiennes', 8, '', 'https://www.imdb.com/title/tt2278388/'),
    (7, 2, '�ok Fena', 113, '�ki lise arkada�� mezuniyet �ncesinde komik bir maceraya at�l�r.', 'Greg Mottola', 'Seth Rogen, Evan Goldberg', 'Michael Cera', 7, '', 'https://www.imdb.com/title/tt0829482/'),
    (8, 2, 'Felekten Bir Gece', 100, 'Las Vegasta yap�lan bekarl��a veda partisi k�t� sonu�lan�r.', 'Todd Phillips', 'Jon Lucas, Scott Moore', 'Bradley Cooper', 7, '', 'https://www.imdb.com/title/tt1119646/'),
    (9, 2, '�vey Karde�ler', 98, '�ki �vey karde�, yeni ailelerinde kaosa yol a�ar.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 6, '', 'https://www.imdb.com/title/tt0838283/'),
    (10, 2, '��lg�n Haber Sunucusu', 94, '1970lerin �nl� haber sunucusunun komik hikayesi.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 7, '', 'https://www.imdb.com/title/tt0357413/');

-- Drama Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (11, 3, 'Esaretin Bedeli', 142, 'Hapiste olan bir adam, y�llar boyunca ba�ka bir mahkumla ba� kurar.', 'Frank Darabont', 'Stephen King, Frank Darabont', 'Tim Robbins', 9, '', 'https://www.imdb.com/title/tt0111161/'),
    (12, 3, 'Forrest Gump', 142, 'D���k IQ ya sahip bir adam�n inan�lmaz hayat hikayesi.', 'Robert Zemeckis', 'Winston Groom, Eric Roth', 'Tom Hanks', 8, '', 'https://www.imdb.com/title/tt0109830/'),
    (13, 3, 'D�v�� Kul�b�', 139, 'Bir uykusuzluk hastas� ve sabun sat�c�s� yeralt� d�v�� kul�b� kurar.', 'David Fincher', 'Chuck Palahniuk, Jim Uhls', 'Brad Pitt', 8, '', 'https://www.imdb.com/title/tt0137523/'),
    (14, 3, 'Baba', 175, 'G��l� bir mafya ailesi yeralt� d�nyas�nda yol al�r.', 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'Marlon Brando', 9, '', 'https://www.imdb.com/title/tt0068646/'),
    (15, 3, 'Schindlerin Listesi', 195, 'Bir i� insan�, Holokost s�ras�nda Yahudileri kurtar�r.', 'Steven Spielberg', 'Thomas Keneally, Steven Zaillian', 'Liam Neeson', 9, '', 'https://www.imdb.com/title/tt0108052/');

-- Korku Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (16, 4, 'Cinnet', 146, 'Iss�z bir otelde kalan bir ailenin ya�ad��� deh�et.', 'Stanley Kubrick', 'Stephen King, Stanley Kubrick', 'Jack Nicholson', 8, '', 'https://www.imdb.com/title/tt0081505/'),
    (17, 4, 'Kapan', 104, 'Bir adam, sevgilisinin ailesinde korkun� s�rlar ke�feder.', 'Jordan Peele', 'Jordan Peele', 'Daniel Kaluuya', 7, '', 'https://www.imdb.com/title/tt5052448/'),
    (18, 4, 'Elm Soka��nda Kabus', 91, 'Korkun� bir katil, gen�leri r�yalar�nda avlar.', 'Wes Craven', 'Wes Craven', 'Heather Langenkamp', 7, '', 'https://www.imdb.com/title/tt0087800/'),
    (19, 4, 'Cad�lar Bayram�', 91, 'Maskeli bir katil, Cad�lar Bayram�nda gen�leri hedef al�r.', 'John Carpenter', 'John Carpenter, Debra Hill', 'Donald Pleasence', 7, '', 'https://www.imdb.com/title/tt0077651/'),
    (20, 4, 'O', 135, 'Bir grup �ocuk, kasabalar�ndaki k�t� varl�kla sava��r.', 'Andy Muschietti', 'Chase Palmer, Cary Joji Fukunaga', 'Bill Skarsg�rd', 7, '', 'https://www.imdb.com/title/tt1396484/');

-- Bilim Kurgu Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (21, 5, 'Ba�lang��', 148, 'Bir CEOnun zihnine bir fikir yerle�tirme g�revi verilen bir h�rs�z.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '', 'https://www.imdb.com/title/tt1375666/'),
    (22, 5, 'Y�ld�zlararas�', 169, 'Bir grup ka�if, uzayda bir solucan deli�inden ge�er.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Matthew McConaughey', 8, '', 'https://www.imdb.com/title/tt0816692/'),
    (23, 5, 'Matrix', 136, 'Bir hacker, ger�ekli�in ard�ndaki ger�e�i ke�feder.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '', 'https://www.imdb.com/title/tt0133093/'),
    (24, 5, 'B��ak S�rt� 2049', 164, 'Gen� bir B��ak Ko�ucusu, insanl��� tehdit eden s�rlar� a���a ��kar�r.', 'Denis Villeneuve', 'Hampton Fancher, Michael Green', 'Ryan Gosling', 8, '', 'https://www.imdb.com/title/tt1856101/'),
    (25, 5, 'Y�ld�z Sava�lar�: B�l�m IV - Yeni Bir Umut', 121, 'Gen� bir �ift�i, galaksiler aras� bir sava�ta �nemli bir rol �stlenir.', 'George Lucas', 'George Lucas', 'Mark Hamill', 8, '', 'https://www.imdb.com/title/tt0076759/');


CREATE TABLE Categories
(
    CategoryId INT PRIMARY KEY NOT NULL,
    CategoryName NVARCHAR (50)
)

INSERT INTO Categories
    (CategoryId, CategoryName)
VALUES
    (1, 'Aksiyon'),
    (2, 'Komedi'),
    (3, 'Drama'),
    (4, 'Korku'),
    (5, 'Bilim Kurgu');

CREATE TABLE Socials
(
    Id INT PRIMARY KEY NOT NULL,
    SocialName NVARCHAR (25) NOT NULL,
    SocialUrl NVARCHAR (MAX) NOT NULL,
    SocialIcon NVARCHAR (MAX) NOT NULL,
)

INSERT INTO Socials
    (Id,SocialName,SocialUrl,SocialIcon)
VALUES
    (1, 'Instagram', 'https://www.instagram.com', 'instagram')


CREATE TABLE Contacts
(
    Id INT PRIMARY KEY NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    Subject NVARCHAR(50) NOT NULL,
    Message NVARCHAR(150) NOT NULL,
    SendingTime DATETIME NOT NULL,
    ContactId INT NOT NULL,
)

INSERT INTO Contacts
    (Id, Name, Email, Subject, Message, SendingTime, ContactId)
VALUES
    (1, 'Ay�e �elik', 'ayse.celik@example.com', 'Film �nerisi', 'Sitenizde daha fazla aksiyon filmi g�rmek istiyoruz.', '2024-11-07 14:00:00', 101),
    (2, 'Burak Y�ld�z', 'burak.yildiz@example.com', 'Site Hatas�', 'Film izlerken s�rekli ba�lant� kopmas� ya��yorum.', '2023-11-07 15:30:00', 102),
    (3, 'Zeynep Arslan', 'zeynep.arslan@example.com', 'Kullan�c� Yorumlar�', 'Film yorumlar�n� daha �ne ��karabilir misiniz?', '2023-11-07 16:45:00', 103),
    (4, 'Emre Y�ld�r�m', 'emre.yildirim@example.com', 'Film Kalitesi', 'Baz� filmlerin g�r�nt� kalitesi d���k g�r�n�yor.', '2023-11-07 17:20:00', 104),
    (5, 'Merve �zt�rk', 'merve.ozturk@example.com', '�yelik Sorunu', 'Hesab�mda oturum a�makta sorun ya��yorum.', '2023-11-07 18:00:00', 105);

