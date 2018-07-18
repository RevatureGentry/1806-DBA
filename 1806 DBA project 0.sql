/--current date
select * from appointment where
doctor_id = &doctor_id and 
APPNT_DATE >= trunc(current_date)
and APPNT_DATE < trunc(current_date) + 1;
/--appointments a few days out
select * from appointment where
doctor_id = &doctor_id and 
APPNT_DATE >= trunc(current_date) -3
and APPNT_DATE < trunc(current_date) + 3;
/--patients appointments
select d.Lname,a.appnt_date, a.appt_time from appointment a
INNER JOIN DOCTOR d
ON d.doctor_id = a.doctor_id
where patient_id = &patient_id;

select count(*) from appointment
group by patient_id;

select * from appointment where
doctor_id = &doctor_id;

--Use case 1
select p.patient_id, p.Fname, p.lname, diag1.name, diag2.name, diag3.name, diag4.name from patient p
join diagnosis diag1 on p.treatment1 = diag1.diagnosis_id
join diagnosis diag2 on p.treatment2 = diag2.diagnosis_id
join diagnosis diag3 on p.treatment3 = diag3.diagnosis_id
join diagnosis diag4 on p.treatment4 = diag4.diagnosis_id
where patient_id = &patient_id;
--group by p.patient_id, p.fname, p.lname;
--use 2
select d.lname, a.appnt_date, a.appt_time from appointment a 
inner join doctor d
on d.doctor_id = a.doctor_id 
where  
a.appnt_date < '14-Jul-18' and a.appnt_date > '09-Jul-18'
and d.doctor_id = 3
order by a.appointment_id asc;
--use 3
insert into appointment(Patient_id, Doctor_id, Appnt_Date, appt_time) values (2,1,'23-Jul-18','10:30 AM');
select p.lname, d.lname, a.appnt_date, a.appt_time from appointment a
inner join patient p
on p.patient_id = a.patient_id
inner join doctor d
on d.doctor_id = a.doctor_id;
