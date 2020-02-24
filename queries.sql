-- JSON query
-- select * from orders where shipping_label ->> 'carrier' = 'USPS';

-- Partial Index
-- CREATE INDEX unshipped_orders ON orders (id) WHERE shipped IS NOT true;
