--drop database if exists WEBSHOP;
--go


--create database WEBSHOP;
--go

--use WEBSHOP;

--create table narudzba(
--sifra int not null primary key identity(1,1),
--kupac int not null,
--datumnarudzbe datetime,
--datumdostave datetime,
--placanje varchar(50) not null,
--ukupaniznos decimal(18,2)
--);

--create table detaljinarudzbe(
--sifra int not null primary key identity,
--narudzba int,
--proizvod int not null,
--kolicina varchar(999), 
--cijena decimal(18,2)
--);

--create table kupac(
--sifra int not null primary key identity,
--ime varchar(50) not null,
--prezime varchar(50) not null,
--email varchar(100) not null,
--adresa varchar(100) not null,
--telefon varchar(20) 
--);

--create table proizvod(
--sifra int not null primary key identity,
--naziv varchar(50) not null,
--vrsta varchar(50) not null,
--cijena decimal(18,2)
--);

--create table vrste(
--sifra int not null,
--suvenir varchar(50),
--dekoracija varchar(50),
--umjetnina varchar(50),
--opis varchar(50)
--);


--alter table narudzba add foreign key (kupac) references kupac(sifra);
--alter table detaljinarudzbe add foreign key (narudzba) references narudzba(sifra);
--alter table detaljinarudzbe add foreign key (proizvod) references proizvod(sifra);
--alter table vrste add foreign key (vrsta) references vrsta(sifra);

--insert into kupac(ime,prezime,email,adresa,telefon) values
--('Marija','Mihelić','mmiheli14@gmail.com','Opatijska 26b','0989836373'),
--('Božić','Petra','bozic.petra35@gmail.com','Vukovarska1','0911234567'),
--('Farkaš','Dominik','sinisartf13@gmail.com','Vukovarska1','0911234568'),
--('Glavaš','Natalija','natalija-glavas@hotmail.com','Vukovarska1','0911234569'),
--('Janić','Miroslav','miroslav.janic@gmail.com','Vukovarska1','0911234560'),
--('Janješić','Filip','filip.janjesic@gmail.com','Vukovarska1','0911234589'),
--('Jović','Nataša','natasajovic238@gmail.com','Vukovarska1','0911234509');


--select ime,prezime,email,adresa,telefon from kupac;
