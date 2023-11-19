
--create database webshop12;

--use webshop12;

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
--proizvod varchar(50) not null,
--kolicina varchar(999), 
--iznos decimal(18,2),
--cijena decimal(18,2)
--);

--create table kupac(
--sifra int not null primary key identity,
--ime varchar(50) not null,
--prezime varchar(50) not null,
--email varchar(100) not null,
--adresa varchar(100) not null,
--telefon varchar(20),
--kosarica int
--);

--create table kosarica(
--sifra int not null primary key identity,
--kupac int not null,
--nazivproizvoda varchar(30)not null,
--kolicina char(99)not null,
--upaniznos decimal(18,2)
--);


--create table proizvod(
--sifra int not null primary key identity,
--ime varchar(50) not null,
--vrsta varchar(50) not null,
--cijena decimal(18,2),
--detaljinarudzbe int not null
--);

--alter table narudzba add foreign key (kupac) references kupac(sifra);
--alter table detaljinarudzbe add foreign key (narudzba) references narudzba(sifra);
--alter table proizvod add foreign key (detaljinarudzbe) references detaljinarudzbe(sifra);
--alter table kosarica add foreign key (kupac) references kupac(sifra);