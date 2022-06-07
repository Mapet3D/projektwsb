CREATE TABLE dbo.pracownicy(
ID_pracownicy INT PRIMARY KEY NOT NULL identity(1,1),
imie NVARCHAR(30) NOT NULL,
nazwisko NVARCHAR(30) NOT NULL,
numer_telefonu INT NOT NULL,
email NVARCHAR(255)NOT NULL,
miasto NVARCHAR(50)NOT NULL,
kod_pocztowy NVARCHAR(50)NOT NULL,
ulica NVARCHAR(50)NOT NULL,
kraj NVARCHAR(50)NOT NULL,
pesel VARCHAR(11)NOT NULL,
);

CREATE TABLE dbo.typ_produktu(
id_typ_produktu INT PRIMARY KEY NOT NULL identity(1,1),
typ_produktu NVARCHAR(50) NOT NULL,
);

CREATE TABLE dbo.dostawcy(
id_dostawcy INT PRIMARY KEY NOT NULL identity(1,1),
nazwa_dostawcy NVARCHAR(50) NOT NULL,
telefon BIGINT,
email NVARCHAR(250) NOT NULL,
miasto NVARCHAR(50) NOT NULL,
kod_pocztowy NVARCHAR(50) NOT NULL,
ulica NVARCHAR(50) NOT NULL,
);
CREATE TABLE dbo.Opisy_zamowien(
id_Opisy_zamowien INT PRIMARY KEY NOT NULL identity(1,1),
id_zamowienia INT NOT NULL,
id_produkty INT NOT NULL,
cena MONEY NOT NULL,
ilosc INT NOT NULL,
);
CREATE TABLE dbo.Producenci(
id_producenci INT PRIMARY KEY NOT NULL identity(1,1),
nazwa_fimy NVARCHAR(50) NOT NULL,
telefon BIGINT,
email NVARCHAR(255)NOT NULL,
kraj NVARCHAR(50),
miasto NVARCHAR(50),
);
CREATE TABLE dbo.Klienci(
id_klienci INT PRIMARY KEY NOT NULL identity(1,1),
imie NVARCHAR(30) NOT NULL,
nazwisko NVARCHAR(30) NOT NULL,
email NVARCHAR(255),
miasto NVARCHAR(50)NOT NULL,
kod_pocztowy NVARCHAR(50),
ulica NVARCHAR(50)NOT NULL,
forma_platnosci NVARCHAR(50) NOT NULL,
);
CREATE TABLE dbo.Zamowienia(
id_zamowienia INT PRIMARY KEY NOT NULL identity(1,1),
ID_dostawcy INT NOT NULL,
data_zamowienia DATE NOT NULL,
ID_producenci INT NOT NULL,
);
CREATE TABLE dbo.Produkty(
id_produkty INT PRIMARY KEY NOT NULL identity(1,1),
nazwa_produktu INT NOT NULL,
id_typ_produktu INT,
id_dostawcy INT NOT NULL,
id_zamowienia INT NOT NULL,
id_producenci INT NOT NULL,
cena MONEY NOT NULL,
opis TEXT, 
);

CREATE TABLE dbo.Auta(
id_auta INT PRIMARY KEY NOT NULL identity(1,1),
marka NVARCHAR(50) NOT NULL,
model NVARCHAR(50) NOT NULL,
numery_rejestracyjne NVARCHAR(20) NOT NULL,
id_kierowcy INT NOT NULL,
przebieg BIGINT,
);
CREATE TABLE dbo.kierowcy(
id_kierowcy INT PRIMARY KEY NOT NULL identity (1,1),
id_pracownicy INT NOT NULL,
);
CREATE TABLE dbo.Zamowienia_klientow(
id_zamowienia_klientow INT PRIMARY KEY NOT NULL identity (1,1),
id_klienci INT NOT NULL,
nr_paragonu_lub_faktury NVARCHAR(20),    
kwota MONEY NOT NULL,
forma_platnosci NVARCHAR(50), 
);