{{
    config(
        tags = ['staging']
    )
}}
 
WITH
required_field AS (
    SELECT
        ID,
        USER_NAME,
        PROJECT_NAME,
        FROM_DATE,
        TO_DATE,
        PROJECT_STATUS,
        IS_APPROVED,
        FEEDBACK
    FROM
        {{ source('SAMPLE', 'PROJECTS')}}
)
 
SELECT * FROM required_field