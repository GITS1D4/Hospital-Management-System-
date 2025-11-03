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
git clone https://github.com/GITS1D4/Hospital-Management-System-.git
cd Hospital-Management-System-
```

### 2️⃣ Import Database
1. Open MySQL terminal or Workbench.  
2. Run the provided SQL script:
```bash
SOURCE hospital.sql;
```

### 3️⃣ Configure Database Connection
In your Java code (`HospitalManagementSystem.java`), update:
```java
private static final String url = "jdbc:mysql://localhost:3306/hospital";
private static final String username = "root";
private static final String password = "My$qL944#j2";
```

### 4️⃣ Compile and Run
```bash
javac src/com/learnJDBC/*.java
java com.learnJDBC.HospitalManagementSystem
```

---

## 📌 Database Schema
| Table | Description |
|--------|-------------|
| **patients** | Stores patient info (name, age, gender) |
| **doctors** | Stores doctor info (name, specialization) |
| **appointments** | Links patients and doctors by date |

---

## 🔮 Future Enhancements
- GUI using JavaFX or Swing  
- Authentication system for admin/doctors/patients  
- Billing and prescriptions  
- Email reminders for appointments  
- Cloud-hosted MySQL integration  

---

## 👩‍💻 Author
**Developed by Rohini Sharanya P**  
Feel free to fork this repository and contribute!
