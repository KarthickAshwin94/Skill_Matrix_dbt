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
        {{ source('SAMPLE', 'ACCOUNTS')}}
)
 
SELECT * FROM required_field