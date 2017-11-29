Use softcl
go
drop table Persona--3
drop table Pais --2
drop table Perfil --1
go
create table Perfil(
NoSeq int identity(1,1) primary key,
Perfil varchar(20) unique)
insert into Perfil values ('Administrador'),('Profesor'),('Alumno')

create table Pais(
NoSeq int identity(1,1) primary key,
Pais varchar(50) unique)
insert into Pais values('Afghanistan'),('Albania'),('Algeria'),('Andorra'),('Angola'),('Antigua and Barbuda'),('Argentina'),('Armenia'),('Australia'),('Austria'),('Azerbaijan'),('Bahamas'),('Bahrain'),('Bangladesh'),('Barbados'),('Belarus'),('Belgium'),('Belize'),('Benin'),('Bhutan'),('Bolivia'),('Bosnia and Herzegovina'),('Botswana'),('Brazil'),('Brunei'),('Bulgaria'),('Burkina Faso'),('Burundi'),('Cabo Verde'),('Cambodia'),('Cameroon'),('Canada'),('Central African Republic (CAR)'),('Chad'),('Chile'),('China'),('Colombia'),('Comoros'),('Democratic Republic of the Congo'),('Republic of the Congo'),('Costa Rica'),('Cote d Ivoire'),('Croatia'),('Cuba'),('Cyprus'),('Czech Republic'),('Denmark'),('Djibouti'),('Dominica'),('Dominican Republic'),('Ecuador'),('Egypt'),('El Salvador'),('Equatorial Guinea'),('Eritrea'),('Estonia'),('Ethiopia'),('Fiji'),('Finland'),('France'),('Gabon'),('Gambia'),('Georgia'),('Germany'),('Ghana'),('Greece'),('Grenada'),('Guatemala'),('Guinea'),('Guinea-Bissau'),('Guyana'),('Haiti'),('Honduras'),('Hungary'),('Iceland'),('India'),('Indonesia'),('Iran'),('Iraq'),('Ireland'),('Israel'),('Italy'),('Jamaica'),('Japan'),('Jordan'),('Kazakhstan'),('Kenya'),('Kiribati'),('Kosovo'),('Kuwait'),('Kyrgyzstan'),('Laos'),('Latvia'),('Lebanon'),('Lesotho'),('Liberia'),('Libya'),('Liechtenstein'),('Lithuania'),('Luxembourg'),('Macedonia (FYROM)'),('Madagascar'),('Malawi'),('Malaysia'),('Maldives'),('Mali'),('Malta'),('Marshall Islands'),('Mauritania'),('Mauritius'),('Mexico'),('Micronesia'),('Moldova'),('Monaco'),('Mongolia'),('Montenegro'),('Morocco'),('Mozambique'),('Myanmar (Burma)'),('Namibia'),('Nauru'),('Nepal'),('Netherlands'),('New Zealand'),('Nicaragua'),('Niger'),('Nigeria'),('North Korea'),('Norway'),('Oman'),('Pakistan'),('Palau'),('Palestine'),('Panama'),('Papua New Guinea'),('Paraguay'),('Peru'),('Philippines'),('Poland'),('Portugal'),('Qatar'),('Romania'),('Russia'),('Rwanda'),('Saint Kitts and Nevis'),('Saint Lucia'),('Saint Vincent and the Grenadines'),('Samoa'),('San Marino'),('Sao Tome and Principe'),('Saudi Arabia'),('Senegal'),('Serbia'),('Seychelles'),('Sierra Leone'),('Singapore'),('Slovakia'),('Slovenia'),('Solomon Islands'),('Somalia'),('South Africa'),('South Korea'),('South Sudan'),('Spain'),('Sri Lanka'),('Sudan'),('Suriname'),('Swaziland'),('Sweden'),('Switzerland'),('Syria'),('Taiwan'),('Tajikistan'),('Tanzania'),('Thailand'),('Timor-Leste'),('Togo'),('Tonga'),('Trinidad and Tobago'),('Tunisia'),('Turkey'),('Turkmenistan'),('Tuvalu'),('Uganda'),('Ukraine'),('United Arab Emirates (UAE)'),('United Kingdom (UK)'),('United States of America (USA)'),('Uruguay'),('Uzbekistan'),('Vanuatu'),('Vatican City (Holy See)'),('Venezuela'),('Vietnam'),('Yemen'),('Zambia'),('Zimbabwe')
create table Persona(
NoSeq int identity(1,1) primary key,
ID varchar(20) unique,
Nombre varchar(50),
Apellido1 varchar(50),
Apellido2 varchar(50),
NombreCompleto as concat(Nombre,' ',Apellido1,' ',Apellido2),
FechaNacimiento date,
Edad as datediff(yy,FechaNacimiento,getdate()),
Pais int references Pais,
Correo varchar(150),
Telefono varchar(20),
Perfil int references Perfil,
clave binary(150))
insert into Persona values ('113870738','Luis Miguel','Bolaños','Mejias','1989/04/14','41','luis.mbm89@gmail.com','88299979',1,hashbytes('MD5','Macbook2011'))

Select * from Persona