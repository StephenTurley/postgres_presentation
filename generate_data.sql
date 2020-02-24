INSERT INTO authors (id, name) VALUES
  (1, 'Cixin Liu'),
  (2, 'James S. A. Corey'),
  (3, 'Philip K. Dick'),
  (4, 'Patrick Rothfuss'),
  (5, 'Octavia E Butler');

INSERT INTO books (title, price, author_id) VALUES
  ('The Three-Body Problem', 14.00, 1),
  ('The Dark Forest', 12.00, 1),
  ('Death''s End', 12.00, 1),
  ('Leviathan Wakes', 9.00, 2),
  ('Caliban''s War', 13.00, 2),
  ('Abbadon''s Gate', 10.00, 2),
  ('Ubik', 7.00, 3),
  ('The Name of the Wind', 24.00, 4),
  ('Dawn: Xenogenesis, Book 1', 18.00, 5);

INSERT INTO customers (name, member_since) VALUES
  ('Stephen Turley', 'Sep-13-2001'),
  ('Paul Beyer', '11/18/2007');

INSERT INTO orders (id, customer_id, shipping_label) VALUES
  (1, 1, '{"carrier": "USPS", "Street": "123 Somewhere", "State": "Ohio"}'),
  (2, 1, '{"carrier": "FedEx", "Street": "123 Somewhere", "State": "Ohio"}'),
  (3, 1, '{"carrier": "UPS", "Street": "456 Another Place", "State": "Ohio"}'),
  (4, 1, '{"carrier": "USPS", "Street": "456 Another Place", "State": "Ohio"}');

INSERT INTO books_ordered (book_id, order_id) VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (4, 3),
  (6, 4);

INSERT INTO reviews (text, customer_id, book_id) VALUES
  ('This is the best damn book I''ve ever read. It literally changed my life', 1, 1),
  ('What an interesting story... that, umm, love scene though... wtf', 2, 9),
  ('Just terrible... save your money.', 1, 4);
