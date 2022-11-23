with
countries as (
    select * from {{ ref('stg_country') }}
),
city as (
    select * from {{ ref('stg_city') }}
),
final as (
select
    countries.id as country_id
    ,count(city.id) as "Number of cities"
    ,avg(city.population) as "Average population in cities"
    ,sum(city.population) as "Total population in cities"
    ,sum(countries.population) - sum(city.population) "Total remaining population"
from countries
    join city on countries.code = city.countrycode
group by
    countries.id
)

select
    *
from final