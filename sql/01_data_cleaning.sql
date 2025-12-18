WITH cleaned_payments AS (
    SELECT
        business_id,
        DATE(payment_date) AS payment_date,
        amount
    FROM payments
    WHERE status = 'Paid'
)
SELECT * FROM cleaned_payments;
