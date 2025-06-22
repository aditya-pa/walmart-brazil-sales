SELECT 
    c.customer_zip_code_prefix,
    c.customer_city,
    c.customer_state,
    o.order_purchase_timestamp,
    o.order_approved_at,
    o.order_estimated_delivery_date,
    oi.order_item_id,
    oi.freight_value,
    oi.price,
    p.payment_installments,
    p.payment_sequential,
    p.payment_type,
    p.payment_value,
    s.seller_city,
    s.seller_state,
    s.seller_zip_code_prefix,
    ps.product_category,
    ps.product_photos_qty,
    ps.product_name_length,
    ps.product_description_length,
    ps.product_height_cm,
    ps.product_length_cm,
    ps.product_width_cm
FROM 
    customers c
JOIN 
    orders o ON o.customer_id = c.customer_id
JOIN 
    order_items oi ON oi.order_id = o.order_id
JOIN 
    payments p ON p.order_id = o.order_id
JOIN 
    seller s ON s.seller_id = oi.seller_id
JOIN 
    products ps ON ps.product_id = oi.product_id;