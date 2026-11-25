{% snapshot roadworks_snapshot %}

{{
config(
  target_schema='SNAPSHOTS',
  unique_key='projectno',
  strategy='check',
  check_cols=[ 'projectname', 'projectstatus', 'programme', 'projectstartdate', 'projectenddate']
)
}}

SELECT *
FROM {{ ref('stg_roadworks') }}

{% endsnapshot %}



   