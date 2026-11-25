SELECT *

FROM {{ ref('init_duration') }}

WHERE ProjectStatus = 'Works Completed' or ProjectStatus = 'Programmed' or ProjectStatus = 'Dispatched' or ProjectStatus = '1_Active' or ProjectStatus = '2_On Hold'
'
