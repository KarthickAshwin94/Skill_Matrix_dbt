{{
    config(
        tags = ['mart']
    )
}}

with otps_staging as (
    select * from {{ ref('otps_staging')}}
)


SELECT
    DATE_TRUNC('hour', expires_at) AS time_slot,
    COUNT(*) AS login_count
FROM
    otps_staging
GROUP BY
    time_slot
ORDER BY
    login_count DESC
