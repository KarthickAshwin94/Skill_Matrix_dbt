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
        EMAIL,
        USER_TYPE,
        IS_APPROVER
    FROM
        {{ source('SAMPLE', 'ACCOUNTS')}}
)
 
SELECT * FROM required_field