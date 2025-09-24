-- Hospital Management System Database Script

-- Create Database
CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

-- Create Patients table
CREATE TABLE IF NOT EXISTS patients (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

-- Create Doctors table
CREATE TABLE IF NOT EXISTS doctors (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    Specialization VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Create Appointments table
CREATE TABLE IF NOT EXISTS appointments (
    id INT NOT NULL AUTO_INCREMENT,
    patients_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (patients_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

-- Insert sample patients
INSERT INTO patients (name, age, gender) VALUES
('Rohit Sharma', 45, 'Male'),
('Ananya Gupta', 30, 'Female'),
('Vikram Singh', 55, 'Male'),
('Meera Nair', 25, 'Female');

-- Insert sample doctors
INSERT INTO doctors (name, Specialization) VALUES
('Dr. Arjun Mehta', 'Cardiologist'),
('Dr. Kavita Iyer', 'Dermatologist'),
('Dr. Rajesh Kumar', 'Orthopedic'),
('Dr. Sneha Rao', 'Pediatrician');

-- Insert sample appointments
INSERT INTO appointments (patients_id, doctor_id, appointment_date) VALUES
(1, 1, '2025-09-25'),
(2, 2, '2025-09-26'),
(3, 3, '2025-09-27'),
(4, 4, '2025-09-28'),
(1, 2, '2025-09-29');
