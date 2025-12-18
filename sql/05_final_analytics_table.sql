SELECT
    b.business_id,
    b.business_name,
    a.month,
    a.total_appointments,
    a.activity_bucket,
    t.trainings_completed,
    c.churn_risk_flag
FROM businesses b
LEFT JOIN activity_bucket a ON b.business_id = a.business_id
LEFT JOIN training_summary t ON b.business_id = t.business_id
LEFT JOIN churn_risk c ON b.business_id = c.business_id;
