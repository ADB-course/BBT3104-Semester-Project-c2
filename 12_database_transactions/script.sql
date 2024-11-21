-- Write your SQL code here
-- Begin a transaction to update network equipment status and log the maintenance
START TRANSACTION;

-- Update network equipment
UPDATE Network_Equipment
SET last_serviced = NOW(), replacement_due_date = DATE_ADD(NOW(), INTERVAL 6 MONTH)
WHERE equipment_id = 101;

-- Insert a maintenance log
INSERT INTO Maintenance_Logs (location, maintenance_date, reason_for_maintenance, duration)
VALUES ('Data Center 1', NOW(), 'Routine check', 2);

-- Commit transaction
COMMIT;

-- In case of error, roll back the transaction
ROLLBACK;


