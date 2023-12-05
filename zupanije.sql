--use master;
--go

--drop database if exists zupanijasql;
--go

--create database zupanijasql;
--go

--alter database zupanijasql collate Croatian_CI_AS;
--go

--use zupanijasql;

--create table zupani(
--sifra int not null primary key identity(1,1),
--ime varchar(50),
--prezime varchar(50));

--create table zupanije(
--sifra int not null primary key identity(1,1),
--naziv varchar(50),
--FKzupan int references zupani(sifra));

--create table opcine(
--sifra int not null primary key identity(1,1),
--FKzupanija int references zupanije(sifra),
--naziv varchar(50));

--create table mjesta(
--sifra int not null primary key identity(1,1),
--FKopcina int references opcine(sifra),
--naziv varchar(50));

--insert into zupanije(naziv) values
--('Osječkobaranjska'),('Vukovarskosrijemska'),('Virovitičkopodravska');

--insert into opcine(naziv) values
--('Osijek'),('Belimanastir'),('Vukovar'),('Vinkovci'),('Virovitica'),('Slatina');

--insert into mjesta(naziv) values
--('Antunovac'),('Čepin'),('Bilje'),('Bizovac'),
--('Babinagreda'),('Borovo'),('Nuštar'),('Privlaka'),
--('Sopje'),('Suhopolje'),('Zdenci'),('Crnac');

--insert into zupani(ime,prezime) values
--('Mato','Lukić'),('Damir','Dekanić'),('Igor','Andrović');

--select * from mjesta;
--select * from opcine;
--select a.naziv as mjesto,b.naziv as opcina,c.naziv as zupani,d.ime,prezime
--from mjesta a inner join opcine b
--on b.sifra=a.FKopcina
--inner join zupanije c
--on c.sifra=b.FKzupanija
--inner join zupani d
--on d.sifra=c.FKzupan;

--insert into zupanije(naziv) values
--('Splitskodalmatinska'),('Dubrovačkoneretvanska'),('Primorskogoranska');

--insert into opcine(naziv) values
--('Split'),('Makarska'),('Metković'),('Opuzen'),('Rijeka'),('Opatija');

--insert into mjesta(naziv) values
--('Trogir'),('Hvar'),('Starigrad'),('Trilj'),('Dubrovnik'),('Korčula'),
--('Metković'),('Opuzen'),('Rijeka'),('Opatija'),('Malilošinj'),('Kraljevica');

--insert into zupani(ime,prezime) values
--('Blaženko','Boban'),('Nikola','Dobroslavić'),('Zlatko','Komadina');