WITH source AS (

    SELECT * FROM {{ source('northwind', 'purchase_order_details')}}
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source