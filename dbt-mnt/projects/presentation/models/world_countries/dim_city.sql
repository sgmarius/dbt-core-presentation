select
    id
    ,name as Name
    ,district as District
from
    {{ ref('stg_city') }}