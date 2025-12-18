WITH activity_trend AS (
    SELECT
        business_id,
        month,
        total_appointments,
        LAG(total_appointments) OVER (
            PARTITION BY business_id ORDER BY month
        ) AS prev_month_appointments
    FROM monthly_appointments
)
SELECT *,
    CASE
        WHEN prev_month_appointments > total_appointments THEN 'At Risk'
        ELSE 'Stable'
    END AS churn_risk_flag
FROM activity_trend;
