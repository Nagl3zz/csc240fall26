USE military_recruiting;

INSERT INTO recruiter
    (recruiter_id, first_name, last_name, branch, recruiting_station)
VALUES
    (1, 'Larry', 'Bird', 'Army', 'Worcester, MA'),
    (2, 'David', 'Ortiz', 'Navy', 'Boston, MA'),
    (3, 'Tom', 'Brady', 'Air Force', 'Springfield, MA');

INSERT INTO applicant
    (applicant_id, first_name, last_name, date_of_birth, email, phone)
VALUES
    (1, 'Paul', 'Pierce', '2005-03-15',
     'paul@example.com', '508-555-0101'),
    (2, 'Patrice', 'Bergeron', '2004-07-22',
     'patrice@example.com', '508-555-0102'),
    (3, 'Bill', 'Russell', '2006-01-10',
     'bill@example.com', '508-555-0103');

INSERT INTO application
    (applicant_id, recruiter_id, application_date,
     desired_job, application_status)
VALUES
    (1, 1, '2026-10-01', 'Intelligence Analyst', 'Pending'),
    (2, 2, '2026-10-02', 'Hospital Corpsman', 'Processing'),
    (3, 3, '2026-10-03', 'Aircraft Maintenance', 'Pending');
