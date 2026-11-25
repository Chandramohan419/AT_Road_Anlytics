with source as (

    select *
    from {{ source('raw1', 'ROADWORKS1') }}

)

select
    ProjectNo,
    ProjectName,
    ProjectStatus,
    ProjectDescription,
    Programme,
    TRY_TO_DATE(ProjectStartDate, 'YYYY-MM-DD') as ProjectStartDate,
    TRY_TO_DATE(ProjectEndDate, 'YYYY-MM-DD') as ProjectEndDate,
from source



