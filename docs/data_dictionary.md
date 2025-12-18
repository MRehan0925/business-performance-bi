# Data Dictionary

## Businesses Table
| Column Name | Description |
|------------|-------------|
| business_id | Unique identifier for each business |
| business_name | Name of the business |
| onboarding_date | Date the business was onboarded |

## Payments Table
| Column Name | Description |
|------------|-------------|
| business_id | Business identifier |
| payment_date | Date of successful payment |
| amount | Payment amount |
| status | Payment status (Paid/Failed) |

## Appointments Table
| Column Name | Description |
|------------|-------------|
| appointment_id | Unique appointment identifier |
| business_id | Business identifier |
| appointment_date | Date of appointment |

## Trainings Table
| Column Name | Description |
|------------|-------------|
| business_id | Business identifier |
| training_date | Scheduled training date |
| status | Training status (Scheduled/Completed) |

## Derived Metrics
| Metric | Definition |
|------|-----------|
| Active Business | ≥1 appointment in a month |
| Inactive Business | 0 appointments |
| Activity Bucket | Classification based on appointment volume |
| Churn Risk Flag | Declining month-over-month activity |
