SELECT

    ProjectNo,
    ProjectName,
    ProjectStatus,
    programme,
    ProjectStartDate,
    ProjectEndDate,
   
FROM {{ ref('init_duration') }}