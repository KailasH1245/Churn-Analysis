-- Query 1: Gender distribution
SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    Gender;

-- Query 2: Contract distribution
SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    Contract;

-- Query 3: Customer status revenue contribution
SELECT 
    Customer_Status, 
    COUNT(Customer_Status) AS TotalCount, 
    SUM(Total_Revenue) AS TotalRev,
    SUM(Total_Revenue) * 100.0 / (SELECT SUM(Total_Revenue) FROM stg_Churn) AS RevPercentage
FROM 
    stg_Churn
GROUP BY 
    Customer_Status;

-- Query 4: State distribution
SELECT 
    State, 
    COUNT(State) AS TotalCount,
    COUNT(State) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    State
ORDER BY 
    Percentage DESC;
