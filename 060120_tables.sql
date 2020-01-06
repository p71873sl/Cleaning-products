create schema test;
use test;
create table chemical
(
Chemical VARCHAR(100) NOT NULL,
Formula VARCHAR(100) NOT NULL, 
Casno VARCHAR(100) not null, 
H_statement VARCHAR(100) not null,
Hazard_index VARCHAR(100) not null,
QSAR VARCHAR(100) not null,
AOEC VARCHAR(100) not null,
Sensitiser VARCHAR(100) not null,
Irritator VARCHAR(100) not null,
H330_R26 VARCHAR(100) not null,
H331_R23 VARCHAR(100) not null,
H332_R20 VARCHAR(100) not null,
H334_R42 VARCHAR(100) not null,
H335_R37 VARCHAR(100) not null,
Primary key (Casno)
) ; 

create table h_statement 
(
Casno VARCHAR(100) not null,
H330 VARCHAR(100) NOT NULL, 
H331 VARCHAR(100) not null, 
H332 VARCHAR(100) not null,
H334 VARCHAR(100) not null,
H335 VARCHAR(100) not null,
FOREIGN KEY (Casno) REFERENCEs chemical (Casno) ON DELETE CASCADE,
primary key (Casno)
) ;

create table QSAR
(
Casno VARCHAR(100) not null,
Sensitiser VARCHAR(100) NOT NULL, 
Inorganic VARCHAR(100) not null, 
Unknown VARCHAR(100) not null,
FOREIGN KEY (Casno) REFERENCEs chemical (Casno) ON DELETE CASCADE,
primary key (Casno)
) ;

create table AOEC
(
Casno VARCHAR(100) not null,
Rr VARCHAR(100) NOT NULL, 
Rs VARCHAR(100) not null, 
Rrs VARCHAR(100) not null,
FOREIGN KEY (Casno) REFERENCEs chemical (Casno) ON DELETE CASCADE,
primary key (Casno)
) ;

