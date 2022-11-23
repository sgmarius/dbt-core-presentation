select
    id
    ,code as Code
    ,name as Name
    ,continent as Continent
    ,region as Region
    ,localname as Demonym
    ,governmentform as "Government form"
from
    {{ ref('stg_country') }}