CREATE DATABASE IF NOT EXISTS military_recruiting;
USE military_recruiting;

CREATE TABLE recruiter (
    recruiter_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    branch VARCHAR(30) NOT NULL,
    recruiting_station VARCHAR(100) NOT NULL
);

CREATE TABLE applicant (
    applicant_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE application (
    application_id INT AUTO_INCREMENT PRIMARY KEY,
    applicant_id INT NOT NULL,
    recruiter_id INT NOT NULL,
    application_date DATE NOT NULL,
    desired_job VARCHAR(100),
    application_status VARCHAR(30) NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (applicant_id)
        REFERENCES applicant(applicant_id),
    FOREIGN KEY (recruiter_id)
        REFERENCES recruiter(recruiter_id)
);


