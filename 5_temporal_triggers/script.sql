-- Write your SQL code here
-- Temporal Trigger to track changes in Customer Complaints status
CREATE TRIGGER track_complaint_status_change
AFTER UPDATE ON Customer_Complaints
FOR EACH ROW
BEGIN
    IF OLD.resolution_status != NEW.resolution_status THEN
        INSERT INTO Complaint_Status_Changes (complaint_id, old_status, new_status, change_time)
        VALUES (OLD.complaint_id, OLD.resolution_status, NEW.resolution_status, NOW());
    END IF;
END;


