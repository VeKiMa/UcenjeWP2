use master;
go
drop database if exists WEBSHOP;
go

create database WEBSHOP;
go
alter database WEBSHOP collate Croatian_CI_AS;
go

use WEBSHOP;

create table narudzba(
sifra int not null primary key identity(1,1),
kupac int not null,
datumnarudzbe datetime,
datumdostave datetime,
placanje varchar(50) not null,
ukupaniznos decimal(18,2)
);
create table detaljinarudzbe(
sifra int not null primary key identity,
narudzba int,
proizvod int not null,
kolicina varchar(999), 
cijena decimal(18,2)
);
create table kupac(
sifra int not null primary key identity,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null,
adresa varchar(100) not null,
telefon varchar(20) 
);
create table proizvod(
sifra int not null primary key identity,
naziv varchar(50) not null,
vrsta int not null,
cijena decimal(18,2)
);

create table vrste(
sifra int not null primary key identity,
naziv varchar(50),
opis varchar(100)
);


alter table narudzba add foreign key (kupac) references kupac(sifra);
alter table detaljinarudzbe add foreign key (narudzba) references narudzba(sifra);
alter table detaljinarudzbe add foreign key (proizvod) references proizvod(sifra);
alter table proizvod add foreign key (vrsta) references vrste(sifra);

insert into kupac(ime,prezime,email,adresa,telefon) values
('Marija','Mihelić','mmiheli14@gmail.com','Opatijska 26b','0989836373'),
('Božić','Petra','bozic.petra35@gmail.com','Vukovarska1','0911234567'),
('Farkaš','Dominik','sinisartf13@gmail.com','Vukovarska1','0911234568'),
('Glavaš','Natalija','natalija-glavas@hotmail.com','Vukovarska1','0911234569'),
('Janić','Miroslav','miroslav.janic@gmail.com','Vukovarska1','0911234560'),
('Janješić','Filip','filip.janjesic@gmail.com','Vukovarska1','0911234589'),
('Jović','Nataša','natasajovic238@gmail.com','Vukovarska1','0911234509');


insert into vrste(naziv,opis) values
('katana','elite'),
('katana','tiger'),
('wakizashi','classic'),
('tanto','light');

insert into proizvod(naziv,vrsta,cijena) values
('umjetnina','2',120),('umjetnina','3',135),('umjetnina','4',140),
('suvenir','5',170),('suvenir','5',180),('suvenir','6',185),('suvenir','7',125),('suvenir','8',115);

insert into narudzba(kupac,datumnarudzbe,datumdostave,placanje,ukupaniznos) values
('6','2023-03-19','2023-03-30','pouzecem',170),
('4','2023-03-21','2023-04-06','pouzecem',180),
('2','2023-03-21','2023-04-07','pouzecem',185);


insert into detaljinarudzbe(narudzba,proizvod,kolicina,cijena) values
('6','7','1',170),
('7','4','1',180),
('8','2','1',185);


