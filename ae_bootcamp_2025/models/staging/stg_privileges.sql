WITH source AS (

    SELECT * FROM {{ source('northwind', 'privileges')}}
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source