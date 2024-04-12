{{
    config(
        tags = ['mart']
    )
}}



WITH projects AS (
    SELECT * FROM {{ ref('projects_staging')}}
)




SELECT
    user_name,
    project_name,
    CASE 
        WHEN project_status BETWEEN 50 AND 70 THEN 'Pending'
        WHEN project_status BETWEEN 70 AND 80 THEN 'In Progress'
        WHEN project_status BETWEEN 80 AND 99 THEN 'Near Completion'
        WHEN project_status = 100 THEN 'Completion'
        ELSE 'Unknown' -- Handle other cases if any
    END AS status_category,
    ABS(DATEDIFF(DAY, GETDATE(), to_date)) AS days_until_completion
FROM
    projects
ORDER BY
    days_until_completion

