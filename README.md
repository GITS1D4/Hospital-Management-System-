# 🏥 Hospital Management System (HMS)

## 📌 Overview
The **Hospital Management System (HMS)** is a Java-based console application designed to simplify hospital operations.  
It allows efficient management of **patients, doctors, and appointments** using a **MySQL database** integrated with **JDBC**.

---

## 🚀 Features
- Patient registration and management  
- Appointment scheduling system  
- Doctor records management  
- MySQL integration with JDBC  
- Console-based interface for simplicity  

---

## 🛠 Tech Stack
- **Programming Language:** Java  
- **Database:** MySQL  
- **Connector:** JDBC  
- **IDE:** Eclipse / IntelliJ / NetBeans (any)  

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/your-username/hospital-management-system.git
cd hospital-management-system
```

### 2️⃣ Import Database
1. Open MySQL terminal or Workbench.  
2. Run the provided SQL script:
```bash
SOURCE hospital.sql;
```

This will create the database **hospital**, along with tables (`patients`, `doctors`, `appointments`) and insert some sample data.

### 3️⃣ Configure Database Connection in Java
In your Java code, update the JDBC connection string as per your MySQL setup:
```java
String url = "jdbc:mysql://localhost:3306/hospital";
String user = "root";       // your MySQL username
String password = "your_password"; // your MySQL password
```

### 4️⃣ Compile and Run
```bash
javac HospitalManagementSystem.java
java HospitalManagementSystem
```

---

## 📌 Database Schema

### Patients Table
| Field  | Type         | Constraints           |
|--------|-------------|-----------------------|
| id     | INT          | PRIMARY KEY, AUTO_INCREMENT |
| name   | VARCHAR(256) | NOT NULL |
| age    | INT          | NOT NULL |
| gender | VARCHAR(10)  | NOT NULL |

### Doctors Table
| Field         | Type         | Constraints           |
|---------------|--------------|-----------------------|
| id            | INT          | PRIMARY KEY, AUTO_INCREMENT |
| name          | VARCHAR(256) | NOT NULL |
| specialization| VARCHAR(255) | NOT NULL |

### Appointments Table
| Field            | Type | Constraints |
|------------------|------|-------------|
| id               | INT  | PRIMARY KEY, AUTO_INCREMENT |
| patients_id      | INT  | FOREIGN KEY (patients.id) |
| doctor_id        | INT  | FOREIGN KEY (doctors.id) |
| appointment_date | DATE | NOT NULL |

---

## 🔮 Future Enhancements
- Add a GUI using JavaFX or Swing  
- Role-based access (Admin, Doctor, Patient)  
- Billing and prescriptions management  
- Reports generation (daily/weekly/monthly)  
- Cloud database integration  

---

## 👩‍💻 Author
Developed by **Rohini Sharanya P**  
Feel free to fork and improve this project!  
