-- Write your SQL code here
-- Create tables with check constraints
CREATE TABLE Network_Equipment (
    equipment_id INT PRIMARY KEY,
    category VARCHAR(50),
    description VARCHAR(255),
    replacement_due_date DATE,
    last_serviced DATE,
    CHECK (replacement_due_date > last_serviced)  -- Check constraint
) ENGINE=InnoDB;

CREATE TABLE Customer_Care (
    care_id INT PRIMARY KEY,
    issue_description VARCHAR(255),
    call_duration INT,
    solution_given TEXT,
    CHECK (call_duration >= 0)  -- Check constraint to ensure valid call durations
) ENGINE=InnoDB;

CREATE TABLE MaintenanceLogs (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    scheduled_date DATETIME CHECK (scheduled_date > CURRENT_TIMESTAMP),
    reason TEXT NOT NULL
) ENGINE=InnoDB;
