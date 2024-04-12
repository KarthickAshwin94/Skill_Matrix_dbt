{{
    config(
        tags = ['mart']
    )
}}

with certifications as (
    select * from {{ ref('certifications_staging')}}
)


    SELECT
        course_name,
        institution_name,
        COUNT(*) AS approved_certifications_count
    FROM
       certifications
       WHERE 
       is_approved=1
       GROUP BY 
       course_name,
       institution_name
       ORDER BY
       approved_certifications_count DESC
