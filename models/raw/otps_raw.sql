{{
    config(
        tags = ['raw']
    )
}}

WITH
required_field AS (
    SELECT
        *
    FROM
        {{ source('SAMPLE', 'OTPS')}}
)
 
SELECT * FROM required_field