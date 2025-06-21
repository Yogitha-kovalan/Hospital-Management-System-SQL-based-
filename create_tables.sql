create database smart_health;
use smart_health;

create table patients (
  patient_id int primary key,
  name varchar(100),
  age int,
  gender varchar(10),
  contact varchar(20)
);

create table doctors (
  doctor_id int primary key,
  name varchar(100),
  specialization varchar(100),
  contact varchar(20)
);

create table appointments (
  appointment_id int primary key,
  patient_id int,
  doctor_id int,
  appointment_date date,
  diagnosis varchar(200),
  foreign key(patient_id) references patients(patient_id),
  foreign key(doctor_id) references doctors(doctor_id)
);

create table reports (
  report_id int primary key,
  patient_id int,
  report_type varchar(100),
  report_date date,
  report_result text,
  foreign key(patient_id) references patients(patient_id)
);
