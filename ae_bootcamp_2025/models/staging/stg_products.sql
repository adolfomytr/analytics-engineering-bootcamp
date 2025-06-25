WITH source AS (
    SELECT
        CAST(supplier_ids AS INTEGER) AS supplier_id,
        id,
        product_code,
        product_name,
        description,
        standard_cost,
        list_price,
        reorder_level,
        target_level,
        quantity_per_unit,
        discontinued,
        minimum_reorder_quantity,
        category,
        attachments 
    FROM 
        {{ source('northwind', 'products')}}
    WHERE
        supplier_ids not like "%;%"
)

SELECT
    *,
    current_timestamp() as ingestion_timestamp
FROM source