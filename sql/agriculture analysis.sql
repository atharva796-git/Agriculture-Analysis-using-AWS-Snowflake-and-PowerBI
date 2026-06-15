 create or replace storage integration PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = '################################'
  STORAGE_ALLOWED_LOCATIONS = ('################')
  COMMENT = 'Optional Comment'


  //description Integration Object
  desc integration PBI_Integration;

//drop integration PBI_Integration

create database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int,	Location string,	Area	int,
Rainfall	float, Temperature	float, Soil_type string,
Irrigation	string, yeilds	int,Humidity	float,
Crops	string,price	int,Season string
);

select * from PBI_Dataset;

create stage PowerBI.PBI_Data.pbi_stage
url = '#################'
storage_integration = PBI_Integration

copy into PBI_Dataset 
from @pbi_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'

list @pbi_stage

select * from PBI_DATASET;

// new copy table to run queries on
create table agriculture as
select * from PBI_DATASET;

select * from agriculture;

alter table agriculture
add Year_Group string;

//1st update
update agriculture
set Year_Group = 'Y1'
where YEAR >= 2004 and YEAR <= 2009;
//2nd update
update agriculture
set Year_Group = 'Y2'
where YEAR >= 2010 and YEAR <= 2015;
//3rd update
update agriculture
set Year_Group = 'Y3'
where YEAR >= 2016 and YEAR <= 2019;

select * from agriculture;

//rainfall_groups
//Min 255 and Max 4103
//rainfall 255 to 1200: low
//rainfall 1200 to 2800: medium
//rainfall 2800 to 4103: high
alter table agriculture
add Rainfall_Groups string;

select * from agriculture;

update agriculture
set Rainfall_Groups = 'Low'
where RAINFALL >= 255 and RAINFALL < 1200;

update agriculture
set Rainfall_Groups = 'Medium'
where RAINFALL >= 1201 and RAINFALL < 2800;

update agriculture
set Rainfall_Groups = 'High'
where RAINFALL >= 2800;

select * from agriculture;

// Now use this in PowerBI