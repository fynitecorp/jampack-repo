-- models/clean_data.sql

with handled_missing_values as (
    select
        coalesce(cost_addons, 0) as cost_addons
    from {{ source('fivetran_metadata', 'jampack_sample_data') }}
)

select *
from handled_missing_values