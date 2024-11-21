-- Write your SQL code here
CREATE TABLE CustomerComplaints (
    complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    details TEXT NOT NULL,
    timestamp DATETIME NOT NULL,
    resolution_status VARCHAR(255) NOT NULL
) ENGINE=InnoDB;
