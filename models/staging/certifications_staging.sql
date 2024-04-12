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
        COURSE_NAME,
        INSTITUTION_NAME,
        SCORE,
        IS_APPROVED,
        FEEDBACK
    FROM
        {{ source('SAMPLE', 'CERTIFICATIONS')}}
)
 
SELECT * FROM required_field