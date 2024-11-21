-- Write your SQL code here
CREATE TABLE NetworkEquipment (
    equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    function TEXT NOT NULL,
    replacement_date DATE NOT NULL,
    next_service_date DATE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Maintenance_Logs (
    log_id INT PRIMARY KEY,
    location VARCHAR(100),
    maintenance_date DATE,
    reason_for_maintenance VARCHAR(255),
    duration INT
) ENGINE=InnoDB;

CREATE TABLE Customer_Care (
    care_id INT PRIMARY KEY,
    issue_description VARCHAR(255),
    call_duration INT,
    solution_given TEXT
) ENGINE=InnoDB;

CREATE TABLE Network_Operations_Team (
    team_id INT PRIMARY KEY,
    task_type VARCHAR(100),
    work_duration INT,
    assigned_problem INT,  -- FK
    area_of_expertise VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE Network_Outages (
    outage_id INT PRIMARY KEY,
    location VARCHAR(100),
    procedure_to_follow TEXT,
    expected_fix_duration INT
) ENGINE=InnoDB;

CREATE TABLE Customer_Complaints (
    complaint_id INT PRIMARY KEY,
    complaint_details TEXT,
    complaint_time TIMESTAMP,
    resolution_status VARCHAR(50)
) ENGINE=InnoDB;

