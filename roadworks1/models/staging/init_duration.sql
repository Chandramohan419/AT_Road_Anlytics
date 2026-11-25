SELECT

    ProjectNo,
    ProjectName,
    ProjectStatus,
    programme,
    ProjectStartDate,
    ProjectEndDate,
    DATEDIFF(
        day,
        ProjectStartDate,
        ProjectEndDate
    ) AS PROJECT_DURATION_DAYS

FROM {{ ref('stg_roadworks') }}

 