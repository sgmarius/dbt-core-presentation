select
    md5(code) as id
    ,code
    ,code2
    ,name
    ,continent
    ,region
    ,lifeexpectancy
    ,population
    ,surfacearea
    ,indepyear
    ,gnp
    ,gnpold
    ,localname
    ,governmentform
from
    {{ source('world_countries', 'country') }}