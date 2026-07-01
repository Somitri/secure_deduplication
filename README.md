# Secure Data Deduplication System

A secure cloud storage application that eliminates duplicate file storage while ensuring data confidentiality through encryption and access control. This project was developed as a major academic project using Java-based web technologies.

---

## 📖 Overview

Cloud storage services often waste storage space by storing multiple copies of identical files uploaded by different users. This project addresses that problem through **data deduplication**, which identifies duplicate files and stores only a single encrypted copy while maintaining secure access for authorized users.

The application provides user authentication, secure file upload and download, encryption, token-based verification, and separate interfaces for users and administrators.

---

## ✨ Features

* 🔐 User Registration and Authentication
* ☁️ Secure Cloud File Upload
* 📁 File Storage and Management
* 🔄 Data Deduplication using Hashing
* 🔒 File Encryption for Secure Storage
* 📥 Secure File Download
* 👤 User Profile Management
* 🛡️ Admin Panel for File and User Management
* 🔑 Token Generation and Verification
* 📊 Public and Private Cloud Storage Modules

---

## 🛠️ Technology Stack

| Category             | Technologies   |
| -------------------- | -------------- |
| Programming Language | Java           |
| Frontend             | JSP, HTML, CSS |
| Backend              | Java Servlets  |
| Database             | MySQL          |
| Web Server           | Apache Tomcat  |
| IDE                  | Eclipse IDE    |
| Version Control      | Git & GitHub   |

---

## 📂 Project Structure

```
secure_deduplication
│
├── src/
│   ├── SHA/
│   ├── aes/
│   ├── util/
│   └── com/
│
├── WebContent/
│   ├── images/
│   ├── WEB-INF/
│   ├── META-INF/
│   ├── *.jsp
│   ├── *.html
│   └── style.css
│
├── .settings/
├── .classpath
├── .project
└── README.md
```

---

## ⚙️ How It Works

1. Users register and log into the application.
2. A user uploads a file.
3. The system generates a unique hash value for the uploaded file.
4. The hash is compared with existing records.
5. If the file already exists:

   * Duplicate storage is avoided.
   * A reference to the existing encrypted file is maintained.
6. If the file is new:

   * The file is encrypted.
   * It is securely stored in the cloud.
7. Authorized users can later download and decrypt the file after successful verification.

---

## 🔒 Security Features

* AES-based file encryption
* Hash-based duplicate detection
* User authentication
* Token verification
* Secure file access
* Cloud storage protection

---

## 💾 Prerequisites

Before running the project, install:

* Java JDK 8 or above
* Eclipse IDE
* Apache Tomcat Server
* MySQL Server

---

## 🚀 Installation

### 1. Clone the repository

```bash
git clone https://github.com/Somitri/secure_deduplication.git
```

### 2. Import the project

* Open Eclipse IDE
* Select **File → Import → Existing Projects into Workspace**
* Choose the cloned project

### 3. Configure MySQL

* Create the required database
* Import the SQL tables (if available)
* Update the database username and password in the project configuration

### 4. Configure Apache Tomcat

* Add Tomcat Server in Eclipse
* Deploy the project
* Start the server

### 5. Run the application

Open your browser and visit:

```
http://localhost:8080/secure_deduplication/
```

---

## 📸 Screenshots

You can add screenshots here.

Example:

```
screenshots/
├── login-page.png
├── registration-page.png
├── user-dashboard.png
├── admin-dashboard.png
├── upload-file.png
└── download-file.png
```

---

## 📚 Learning Outcomes

This project demonstrates practical implementation of:

* Cloud Storage Concepts
* Secure Data Deduplication
* Cryptography
* Java Web Development
* Database Connectivity (JDBC)
* Authentication and Authorization
* MVC-based Web Application Development

---

## 🤝 Future Improvements

* Multi-cloud storage support
* Two-factor authentication
* Role-based access control
* REST API integration
* Responsive user interface
* Cloud deployment (AWS/Azure/GCP)
* File versioning and audit logs

---

## 👩‍💻 Author

**Somitri A**

GitHub: https://github.com/Somitri

---

## 📄 License

This project was developed for academic and educational purposes.

Feel free to use this project for learning and research with proper attribution.
