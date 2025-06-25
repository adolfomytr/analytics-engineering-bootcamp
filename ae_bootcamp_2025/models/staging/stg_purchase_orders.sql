WITH source AS (

    SELECT * FROM {{ source('northwind', 'purchase_orders')}}
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source