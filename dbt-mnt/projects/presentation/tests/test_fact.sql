select
    country_id
from
    {{ ref('fact_country_stats') }}
where
    "Number of cities" < 0