-- Write your SQL code here

-- Stored procedure to assign a new task to the Network Operations Team
DELIMITER $$

CREATE PROCEDURE assign_new_task (IN team_id INT, IN task_type VARCHAR(100), IN problem_id INT)
BEGIN
    INSERT INTO Network_Operations_Team (team_id, task_type, assigned_problem)
    VALUES (team_id, task_type, problem_id);
END $$

DELIMITER ;

-- Stored procedure to get the summary of outages between two dates
DELIMITER $$
CREATE PROCEDURE proc_get_outage_summary(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT equipment_id, COUNT(*) AS outage_count
    FROM NetworkOutages
    WHERE outage_date BETWEEN start_date AND end_date
    GROUP BY equipment_id;
END $$
DELIMITER ;
