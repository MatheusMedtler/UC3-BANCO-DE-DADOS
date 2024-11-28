--Código

--Descrição do assasinato
select * from crime_scene_report
where city = 'SQL City' AND date = 20180115 and type = 'murder'

--Testemunhas

select * from person
where address_street_name = 'Northwestern Dr'
order by address_number Desc

select * from person 
where name = 'Morty Schapiro'

select * from person
where address_street_name = 'Franklin Ave' and name like '%Annabel%'
order by address_number desc

--Depoimentos
select* from interview 
where person_id IN (14887,16371)

--Suspeitos
select * from get_fit_now_member
where membership_status = 'gold' AND id like '%48Z%'

select * from get_fit_now_check_in
where membership_id IN ('48Z7A','48Z55')
and check_in_date = 20180109


--Pessoas no evento

select * from facebook_event_checkin
where person_id in (14887,16371) and date = 20180115

select * from facebook_event_checkin
where event_name = 'The Funky Grooves Tour'


--Principal suspeito

select * from person
where id = 67318

INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;

--Depoimento do assasinO

select * from interview 
where person_id = 67318


--3 Suspeitas de serem mandantes

select person.id from drivers_license
join person
on drivers_license.id = person.license_Id
where hair_color = 'red' and gender = 'female' and car_model = 'Model S'
and height between 65 and 67



select person_id
from facebook_event_checkin
where event_name = 'SQL Symphony Concert'
and CAST (date as varchar) like '%201712%'
group by 1
having count(*) = 3


select * from person 
where
id IN (select 
	   person_id
from facebook_event_checkin
where event_name = 'SQL Symphony Concert'
and CAST (date as varchar) like '%201712%'
group by 1
having count(*) = 3)

and id in (select person.id
from drivers_license
join person
on drivers_license.id = person.license_Id
where hair_color = 'red' and gender = 'female' and car_model = 'Model S'
and height between 65 and 67) 


INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;
