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
        {{ source('SAMPLE', 'PROJECTS')}}
)
 
SELECT * FROM required_field