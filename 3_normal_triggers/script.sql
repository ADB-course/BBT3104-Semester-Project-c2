-- Write your SQL code here
-- Trigger to log changes when a maintenance log is inserted
CREATE TRIGGER before_maintenance_insert
BEFORE INSERT ON Maintenance_Logs
FOR EACH ROW
BEGIN
    INSERT INTO Log_Audit (action, table_name, action_time)
    VALUES ('INSERT', 'Maintenance_Logs', NOW());
END;

-- Trigger to update network equipment status when an outage is inserted
CREATE TRIGGER AfterOutageInsert
AFTER INSERT ON NetworkOutages
FOR EACH ROW
BEGIN
    UPDATE NetworkEquipment
    SET status = 'Out of Service'
    WHERE equipment_id = NEW.equipment_id;
END;


