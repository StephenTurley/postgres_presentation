select * from orders where shipping_label ->> 'carrier' = 'USPS';
