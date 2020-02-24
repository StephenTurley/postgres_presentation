-- Partial Index
-- CREATE INDEX unshipped_orders ON orders(id) WHERE shipped IS NOT true;

-- JSON query
-- select * from orders where shipping_label ->> 'carrier' = 'USPS' and shipped IS NOT true;

-- Expression Index
-- CREATE INDEX carriers on orders((shipping_label -> 'carrier'));

-- Why not both? UPS wants to know how many orders its going to ship today
-- select count(*) from orders where shipping_label ->> 'carrier' = 'UPS' and shipped IS NOT true;
-- CREATE INDEX pending_shipments_carriers on orders((shipping_label -> 'carrier')) where shipped IS NOT true;
