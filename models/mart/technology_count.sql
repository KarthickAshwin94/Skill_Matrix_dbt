{{
    config(
        tags = ['mart']
    )
}}


with skills as (
    select * from {{ ref('skills_staging')}}
)

SELECT
    technology,
    COUNT(*) AS technology_count
FROM
    skills
GROUP BY
    technology
ORDER BY
    technology_count DESC
