create database UcenjeWP5;

use master;
go
drop database if exists UcenjeWP5;
go
create database UcenjeWP5;
go
use UcenjeWP5;

create table rezervacija(
idrezervacija int not null primary key identity(1,1),
idstol int not null,
brojosoba int,
vrijemedolaska datetime
);

create table stol(
idstol int not null primary key identity(1,1),
idkonobar int not null,
lokacija varchar(50) not null,
brojstolica int
);

create table konobar(
idkonobar int not null primary key identity(1,1),
ime varchar(30) not null,
prezime varchar(30) not null,
datumrodjenja datetime,
oib char(11)
);

alter table stol add foreign key (idkonobar) references konobar(idkonobar);
alter table rezervacija add foreign key (idstol) references stol(idstol);

select * from konobar;

insert into konobar(ime,prezime,datumrodjenja,oib) values
('Nikola','Sladiæ','1996-01-04','12345678999'),
('Stojan','Cariæ', '1995-05-25','59385720692'),
('Goran','Maras','1995-04-20','54382957223');

select * from stol;

insert into stol(idkonobar,lokacija,brojstolica)
values (1, 'Terasa van', 6);

select * from rezervacija; 

insert into rezervacija(idstol, brojosoba, vrijemedolaska)
values(1, 6, '2024-06-25 18:30');