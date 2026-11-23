select * from healthcare_analysis.hodata_clean;

select count(*) as total_count from healthcare_analysis.hospital_quarterly;

-- Q1
select sum(GRIP_TOT+GROP_TOT) as total_gross_patient_revenue from healthcare_analysis.hospital_quarterly;


-- Q2
select sum(NET_TOT+OTH_OP_REV) AS total_operating_revenue from healthcare_analysis.hospital_quarterly;

-- Q3
select sum(NET_TOT+OTH_OP_REV-TOT_OP_EXP) AS operating_result from healthcare_analysis.hospital_quarterly;

-- Q4 
SELECT
    (
        (SUM(GRIP_TOT + GROP_TOT) - SUM(TOT_OP_EXP))
        / SUM(GRIP_TOT + GROP_TOT)
    ) * 100 AS operating_margin
FROM healthcare_analysis.hospital_quarterly;

-- Q5
SELECT
    (SUM(NET_TOT) / SUM(GRIP_TOT + GROP_TOT)) * 100
    AS net_to_gross_revenue_ratio
FROM healthcare_analysis.hospital_quarterly;

-- Q6
SELECT
    SUM(CAP_EXP) AS total_capital_expenditure
FROM healthcare_analysis.hospital_quarterly;
