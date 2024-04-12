{{
    config(
        tags = ['staging']
    )
}}
 
WITH
required_field AS (
    SELECT
        ID,
        EMAIL,
        OTP_CODE,
        EXPIRES_AT
    FROM
        {{ source('SAMPLE', 'OTPS')}}
)
 
SELECT * FROM required_field