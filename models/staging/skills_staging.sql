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
        TECHNOLOGY,
        PROJECTS_WORKED,
        IS_APPROVED,
        FEEDBACK
    FROM
        {{ source('SAMPLE', 'SKILLS')}}
)
 
SELECT * FROM required_field