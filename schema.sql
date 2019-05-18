create database homicide_db;
use homicide_db;

create table homicide (
State text,
crime_type text,
victim_sex text,
victim_age text,
perpetrator_sex text,
perpetrator_age text,
Relationship text,
Weapon text
);

create table weapons (
Circumstances text,
Handguns text,
Rifles int,
Shotguns int,
blunt_objects int,
knives text,
body_as_weapon int,
Poison int,
pushed_thrown_out_window int,
Explosives int, 
Fire int,
Narcotics int, 
Drowning int,
Strangulation int, 
Asphyxiation int
);

create table relationship (
Circumstances text,
Husband int,
Wife int,
Mother text,
Father text,
Son int, 
Daughter int, 
Brother int, 
Sister int, 
other_family int,
Acquaintance text, 
Friend int, 
Boyfriend int, 
Girlfriend int, 
Neighbor int, 
Employee int, 
Employer int, 
Stranger text
);

select * from homicide;
select * from weapons;
select * from relationship;

select weapons.Circumstances, weapons.Handguns, weapons.Rifles, weapons.Shotguns, weapons.blunt_objects, weapons.knives,
weapons.body_as_weapon, weapons.Poison, weapons.pushed_thrown_out_window, weapons.Explosives,
weapons.Fire, weapons.Narcotics, weapons.Drowning, weapons.Strangulation, weapons.Asphyxiation,
relationship.Circumstances, relationship.Husband, relationship.Wife, relationship.Mother,
relationship.Father, relationship.Son, relationship.Daughter, relationship.Brother,
relationship.Sister, relationship.other_family, relationship.Acquaintance, relationship.Friend, relationship.Boyfriend,
relationship.Girlfriend, relationship.Neighbor, relationship.Employee, relationship.Employer, relationship.Stranger
from weapons 
join relationship
on weapons.Circumstances = relationship.Circumstances;

