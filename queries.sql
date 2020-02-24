-- Partial Index
/* CREATE INDEX unshipped_orders ON orders(id) WHERE shipped IS NOT true; */

-- JSON query
/* select * from orders where shipping_label ->> 'carrier' = 'USPS' and shipped IS NOT true; */

-- Expression Index
/* CREATE INDEX carriers on orders((shipping_label -> 'carrier')); */

-- Why not both? UPS wants to know how many orders its going to ship today
/* select count(*) from orders where shipping_label ->> 'carrier' = 'UPS' and shipped IS NOT true; */
/* CREATE INDEX pending_shipments_carriers on orders((shipping_label -> 'carrier')) where shipped IS NOT true; */

-- CREATE DOMAIN
/* INSERT INTO orders (shipping_label, customer_id, shipped) VALUES ('{"foo":"bar"}', 1, true); */

-- ts_query and ts_vector
/* SELECT to_tsvector('simple', 'hello-world, the hyphens get weird a-1234'); */
/* SELECT to_tsvector('english', 'hello-world, the hyphens get weird a-1234'); */
/* SELECT to_tsvector('simple', 'ahh beans!') @@ to_tsquery('beans:*'); */
/* SELECT * FROM customers where to_tsvector(name) @@ to_tsquery('Stephen'); */
-- how could we speed this up in production? 

-- ts_rank
/* SELECT text, ts_rank(to_tsvector(text), query) AS rank */
/* FROM reviews, to_tsquery('terrible') query */
/* WHERE  query @@ to_tsvector(text) */
/* ORDER BY rank DESC; */

-- highlighting
/* SELECT ts_headline('english', text, to_tsquery('terrible')) */ 
/* FROM reviews */
/* WHERE to_tsquery('terrible') @@ to_tsvector(text); */

-- trigram
/* SELECT show_trgm(name) from customers; */
/* SELECT show_trgm(name) from authors; */
/* SELECT word_similarity('Stephen Tyler', 'Stephen Turley'); */
/* SELECT word_similarity('Stephen Tyler', 'Aerosmith sucks'); */

/* SELECT text, similarity(text, 'terrible') AS sml */
/* FROM reviews */
/* WHERE text % 'terrible' */
/* ORDER BY sml DESC, text; */
