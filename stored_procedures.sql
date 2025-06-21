delimiter //
create procedure add_appointment(
  in pid int, 
  in did int, 
  in app_date date, 
  in diag varchar(200)
)
begin
  insert into appointments(patient_id, doctor_id, appointment_date, diagnosis)
  values(pid, did, app_date, diag);
end //
delimiter ;

-- Calling the procedure
call add_appointment(1, 101, '2024-08-20', 'Follow-up Checkup');
