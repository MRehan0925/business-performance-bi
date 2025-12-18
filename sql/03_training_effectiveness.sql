WITH training_summary AS (
    SELECT
        business_id,
        COUNT(*) AS trainings_scheduled,
        COUNT(CASE WHEN status = 'Completed' THEN 1 END) AS trainings_completed
    FROM trainings
    GROUP BY 1
)
SELECT *,
    ROUND(trainings_completed * 100.0 / NULLIF(trainings_scheduled,0),2)
        AS completion_rate
FROM training_summary;
