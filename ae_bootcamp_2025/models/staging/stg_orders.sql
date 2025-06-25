WITH source AS (

    SELECT * FROM {{ source('northwind', 'orders')}}
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source