{{
    config(
        tags = ['mart']
    )
}}

with accounts as (
    select * from {{ ref('accounts_staging')}}
)

SELECT
    COUNT(CASE WHEN user_type = 'User' THEN 1 END) AS users_as_approver,
    COUNT(CASE WHEN user_type = 'Admin' THEN 1 END) AS admins_as_approver,
    COUNT(*) AS total_users,
    COUNT(CASE WHEN user_type = 'Admin' OR user_type = 'User' THEN 1 END) AS total_admins
FROM
    accounts
WHERE
    is_approver = 'true'

