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
        {{ source('SAMPLE', 'CERTIFICATIONS')}}
)
 
SELECT * FROM required_field