WITH monthly_appointments AS (
    SELECT
        business_id,
        DATE_TRUNC('month', appointment_date) AS month,
        COUNT(*) AS total_appointments
    FROM appointments
    GROUP BY 1,2
),
activity_bucket AS (
    SELECT *,
        CASE
            WHEN total_appointments = 0 THEN '0'
            WHEN total_appointments BETWEEN 1 AND 10 THEN '1-10'
            WHEN total_appointments BETWEEN 11 AND 50 THEN '11-50'
            WHEN total_appointments BETWEEN 51 AND 100 THEN '51-100'
            ELSE '100+'
        END AS activity_bucket
    FROM monthly_appointments
)
SELECT * FROM activity_bucket;
