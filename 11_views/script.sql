-- Write your SQL code here
-- View to display network outage details for monitoring
CREATE VIEW Network_Outage_View AS
SELECT outage_id, location, procedure_to_follow, expected_fix_duration
FROM Network_Outages
WHERE expected_fix_duration > 2;


