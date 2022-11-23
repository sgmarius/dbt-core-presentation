select
    md5(name || countrycode) as id
    ,name
    ,countrycode
    ,district
    ,population
from
    {{ source('world_countries', 'city') }}