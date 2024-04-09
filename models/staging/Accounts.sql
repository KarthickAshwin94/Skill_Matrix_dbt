{{
    config(
        tags = ['staging']
    )
}}
 
WITH
required_feild AS (
    SELECT
        user_id,
        firstname,
        lastname,
        email,
        password,
        age,
        role,
        passwordchanged
    FROM
        {{ source('learningplatform', 'users')}}
)
 
SELECT * FROM required_feild

WITH required_fields AS (
    SELECT 
    ID,
    USER_NAME,
    EMAIL,
    PASSWORD,
    USER_TYPE,
    IS_APPROVER
    
    FROM {{SOURCE('SKILL_MATRIX',)}}



)