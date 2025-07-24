-- Create the view vw_ChurnData to include customers with status 'Churned' or 'Stayed'
CREATE VIEW vw_ChurnData AS
SELECT * 
FROM prod_Churn 
WHERE Customer_Status IN ('Churned', 'Stayed');

-- Create the view vw_JoinData to include customers with status 'Joined'
CREATE VIEW vw_JoinData AS
SELECT * 
FROM prod_Churn 
WHERE Customer_Status = 'Joined';
