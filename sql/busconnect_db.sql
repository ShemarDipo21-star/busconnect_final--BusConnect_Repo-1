CREATE DATABASE  busconnect_final;

use busconnect_final;

CREATE TABLE IF NOT EXISTS contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    achternaam VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    subject VARCHAR(100),
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS job_applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NULL,
    applied_email VARCHAR(255) NOT NULL,
    applied_phone VARCHAR(50) NOT NULL,
    profile_photo_url TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY, 
    voornaam VARCHAR(50) NOT NULL,
    achternaam VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE, 
    telefoon VARCHAR(20) NOT NULL, 
    profile_photo_url LONGTEXT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS voertuigen (
    voertuigen_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rijbewijs VARCHAR(20) NOT NULL,
    ervaring INT NOT NULL,
    voertuig VARCHAR(50) NOT NULL,
    capaciteit INT NOT NULL,
    kentekenplaat VARCHAR(20) NOT NULL,
    bouwjaar INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS school_details (
    school_details_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    route VARCHAR(225) NOT NULL,
    school VARCHAR(255) NOT NULL,
    tijd_och TIME,
    tijd_mid TIME,
    dag VARCHAR(150),
    prijs DECIMAL(10,2),
    op_afhaal VARCHAR(20) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


INSERT INTO admins (email, password) VALUES ('admin@busconnect', SHA2('admin123', 256))
ON DUPLICATE KEY UPDATE email=email;
