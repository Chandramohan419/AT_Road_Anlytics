

{{ config(
    materialized='incremental',
    unique_key='ProjectNo'
) }}

select *
from {{ ref('stg_roadworks') }}

{% if is_incremental() %}
where ProjectNo >
(
    select coalesce(max(ProjectNo),0)
    from {{ this }}
)
{% endif %}