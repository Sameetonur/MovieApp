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
    (1, 'FilmEvreni', 'Unutulmaz Filmler', 'Favori Filmlerinizi �zleyin', '')

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
    (1, 1, 'Mad Max: Fury Road', 120, 'Hayatta kalmanın ana tema olduğu bir kıyamet sonrası aksiyon filmi.', 'George Miller', 'George Miller, Brendan McCarthy, Nick Lathouris', 'Tom Hardy', 8, '/ui/img/Filmler/Aksiyon-MadMax-1.png', 'https://www.imdb.com/title/tt1392190/'),
    (2, 1, 'John Wick', 101, 'Emekli bir tetikçi, sevdiği köpeğinin intikamını almak için harekete geçer.', 'Chad Stahelski', 'Derek Kolstad', 'Keanu Reeves', 7, '/ui/img/Filmler/Aksiyon-jhonwick-2.jpg', 'https://www.imdb.com/title/tt2911666/'),
    (3, 1, 'Kara Şövalye', 152, 'Batman, Gotham şehrini kurtarmak için Jokerle savaşır.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Christian Bale', 9, '/ui/img/Filmler/Aksiyon-karasovalye-3.png', 'https://www.imdb.com/title/tt0468569/'),
    (4, 1, 'Başlangıç', 148, 'Bir hırsız, insanların zihinlerine fikir yerleştirmek için rüyalarına girer.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '/ui/img/Filmler/Aksiyon-baslangic-4.jpg', 'https://www.imdb.com/title/tt1375666/'),
    (5, 1, 'Matrix', 136, 'Bir hacker, gerçekliğin ardındaki gerçeği keşfeder.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '/ui/img/Filmler/Aksiyon-matrix-5.jpg', 'https://www.imdb.com/title/tt0133093/');

-- Komedi Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (6, 2, 'Büyük Budapeşte Oteli', 99, 'Bir konsiyerj ve lobi görevlisi, eşsiz bir otel macerasına atılır.', 'Wes Anderson', 'Stefan Zweig, Wes Anderson', 'Ralph Fiennes', 8, '/ui/img/Filmler/Komedi-Buyukbudapestehotel-1.jpg', 'https://www.imdb.com/title/tt2278388/'),
    (7, 2, 'Çok Fena', 113, 'İki lise arkadaşı mezuniyet öncesinde komik bir maceraya atılır.', 'Greg Mottola', 'Seth Rogen, Evan Goldberg', 'Michael Cera', 7, '/ui/img/Filmler/Komedi-cokfena-2.jpg', 'https://www.imdb.com/title/tt0829482/'),
    (8, 2, 'Felekten Bir Gece', 100, 'Las Vegas’ta yapılan bekarlığa veda partisi kötü sonuçlanır.', 'Todd Phillips', 'Jon Lucas, Scott Moore', 'Bradley Cooper', 7, '/ui/img/Filmler/Komedi-felektenbirgece-3.jpg', 'https://www.imdb.com/title/tt1119646/'),
    (9, 2, 'Üvey Kardeşler', 98, 'İki üvey kardeş, yeni ailelerinde kaosa yol açar.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 6, '/ui/img/Filmler/Komedi-uveykardesler-4.jpg', 'https://www.imdb.com/title/tt0838283/'),
    (10, 2, 'Çılgın Haber Sunucusu', 94, '1970’lerin ünlü haber sunucusunun komik hikayesi.', 'Adam McKay', 'Will Ferrell, Adam McKay', 'Will Ferrell', 7, '/ui/img/Filmler/Komedi-ilginchabersunucusu-5.jpg', 'https://www.imdb.com/title/tt0357413/');



-- Drama Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (11, 3, 'Esaretin Bedeli', 142, 'Hapiste olan bir adam, yıllar boyunca başka bir mahkumla bağ kurar.', 'Frank Darabont', 'Stephen King, Frank Darabont', 'Tim Robbins', 9, '/ui/img/Filmler/Dram-EsaretinBedeli-1.jpg', 'https://www.imdb.com/title/tt0111161/'),
    (12, 3, 'Forrest Gump', 142, 'Düşük IQ’ya sahip bir adamın inanılmaz hayat hikayesi.', 'Robert Zemeckis', 'Winston Groom, Eric Roth', 'Tom Hanks', 8, '/ui/img/Filmler/Dram-forrestgump-2.jpg', 'https://www.imdb.com/title/tt0109830/'),
    (13, 3, 'Dövüş Kulübü', 139, 'Bir uykusuzluk hastası ve sabun satıcısı yeraltı dövüş kulübü kurar.', 'David Fincher', 'Chuck Palahniuk, Jim Uhls', 'Brad Pitt', 8, '/ui/img/Filmler/Dram-Dovuskulubu-3.jpg', 'https://www.imdb.com/title/tt0137523/'),
    (14, 3, 'Baba', 175, 'Güçlü bir mafya ailesi yeraltı dünyasında yol alır.', 'Francis Ford Coppola', 'Mario Puzo, Francis Ford Coppola', 'Marlon Brando', 9, '/ui/img/Filmler/Dram-baba-4.jpg', 'https://www.imdb.com/title/tt0068646/'),
    (15, 3, 'Schindler’in Listesi', 195, 'Bir iş insanı, Holokost sırasında Yahudileri kurtarır.', 'Steven Spielberg', 'Thomas Keneally, Steven Zaillian', 'Liam Neeson', 9, '/ui/img/Filmler/Dram-schindlerinlistesi-5.jpg', 'https://www.imdb.com/title/tt0108052/');



-- Korku Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (16, 4, 'Cinnet', 146, 'Issız bir otelde kalan bir ailenin yaşadığı dehşet.', 'Stanley Kubrick', 'Stephen King, Stanley Kubrick', 'Jack Nicholson', 8, '/ui/img/Filmler/Korku-Cinnet-1.jpg', 'https://www.imdb.com/title/tt0081505/'),
    (17, 4, 'Kapan', 104, 'Bir adam, sevgilisinin ailesinde korkunç sırlar keşfeder.', 'Jordan Peele', 'Jordan Peele', 'Daniel Kaluuya', 7, '/ui/img/Filmler/Korku-Kapan-2.jpg', 'https://www.imdb.com/title/tt5052448/'),
    (18, 4, 'Elm Sokağında Kabus', 91, 'Korkunç bir katil, gençleri rüyalarında avlar.', 'Wes Craven', 'Wes Craven', 'Heather Langenkamp', 7, '/ui/img/Filmler/Korku-ElmSokKabus-3.jpg', 'https://www.imdb.com/title/tt0087800/'),
    (19, 4, 'Cadılar Bayramı', 91, 'Maskeli bir katil, Cadılar Bayramı’nda gençleri hedef alır.', 'John Carpenter', 'John Carpenter, Debra Hill', 'Donald Pleasence', 7, '/ui/img/Filmler/Korku-CadilarBayrami-4.jpg', 'https://www.imdb.com/title/tt0077651/'),
    (20, 4, 'O', 135, 'Bir grup çocuk, kasabalarındaki kötü varlıkla savaşır.', 'Andy Muschietti', 'Chase Palmer, Cary Joji Fukunaga', 'Bill Skarsgård', 7, '/ui/img/Filmler/Korku-O-5.jpg', 'https://www.imdb.com/title/tt1396484/');


-- Bilim Kurgu Filmleri
INSERT INTO Movies
    (MovieId, CategoryId, MovieName, MovieDuration, AboutMovie, Director, Writer, Star, ImdbPoint, MovieImgURL, MovieURL)
VALUES
    (21, 5, 'Başlangıç', 148, 'Bir CEO’nun zihnine bir fikir yerleştirme görevi verilen bir hırsız.', 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio', 8, '/ui/img/Filmler/BilimKurgu-Baslangic-1.jpg', 'https://www.imdb.com/title/tt1375666/'),
    (22, 5, 'Yıldızlararası', 169, 'Bir grup kaşif, uzayda bir solucan deliğinden geçer.', 'Christopher Nolan', 'Jonathan Nolan, Christopher Nolan', 'Matthew McConaughey', 8, '/ui/img/Filmler/BilimKurgu-Yildizlararasi-2.jpg', 'https://www.imdb.com/title/tt0816692/'),
    (23, 5, 'Matrix', 136, 'Bir hacker, gerçekliğin ardındaki gerçeği keşfeder.', 'Lana Wachowski, Lilly Wachowski', 'Lilly Wachowski, Lana Wachowski', 'Keanu Reeves', 8, '/ui/img/Filmler/BilimKurgu-Matrix-3.jpg', 'https://www.imdb.com/title/tt0133093/'),
    (24, 5, 'Bıçak Sırtı 2049', 164, 'Genç bir Bıçak Koşucusu, insanlığı tehdit eden sırları açığa çıkarır.', 'Denis Villeneuve', 'Hampton Fancher, Michael Green', 'Ryan Gosling', 8, '/ui/img/Filmler/BilimKurgu-Bicaksirti-4.jpg', 'https://www.imdb.com/title/tt1856101/'),
    (25, 5, 'Yıldız Savaşları: Bölüm IV - Yeni Bir Umut', 121, 'Genç bir çiftçi, galaksiler arası bir savaşta önemli bir rol üstlenir.', 'George Lucas', 'George Lucas', 'Mark Hamill', 8, '/ui/img/Filmler/BilimKurgu-SVNewHope-5.jpg', 'https://www.imdb.com/title/tt0076759/');


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

