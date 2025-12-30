CREATE INDEX app.idx_orders_order_date
ON app.orders(order_date)
ONLINE
NOLOGGING;

