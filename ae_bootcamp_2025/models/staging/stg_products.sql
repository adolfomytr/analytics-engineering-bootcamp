WITH source AS (

    SELECT * FROM {{ source('northwind', 'products')}}
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source