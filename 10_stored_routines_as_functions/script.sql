-- Write your SQL code here
-- Function to calculate average call duration from Customer Care
DELIMITER $$

CREATE FUNCTION avg_call_duration() RETURNS DECIMAL(10,2)
BEGIN
    DECLARE avg_duration DECIMAL(10,2);
    SELECT AVG(call_duration) INTO avg_duration FROM Customer_Care;
    RETURN avg_duration;
END $$

DELIMITER ;

-- Function to get the average duration of outages at a location
DELIMITER $$
CREATE FUNCTION func_get_avg_outage_duration(location VARCHAR(255))
RETURNS FLOAT
BEGIN
    DECLARE avg_duration FLOAT;
    SELECT AVG(duration) INTO avg_duration
    FROM NetworkOutages
    WHERE location = location;
    RETURN avg_duration;
END $$
DELIMITER ;
