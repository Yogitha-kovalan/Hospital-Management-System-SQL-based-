-- Appointment summary with doctor and patient info
select 
  a.appointment_id,
  p.name as patient_name,
  d.name as doctor_name,
  d.specialization,
  a.appointment_date,
  a.diagnosis
from appointments a
join patients p on a.patient_id = p.patient_id
join doctors d on a.doctor_id = d.doctor_id;

-- Count of appointments per doctor
select 
  d.name as doctor_name, 
  count(*) as total_appointments
from appointments a
join doctors d on a.doctor_id = d.doctor_id
group by d.name;
