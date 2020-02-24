DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

CREATE TABLE IF NOT EXISTS books(
  id SERIAL PRIMARY KEY NOT NULL,
  title TEXT,
  price MONEY,
  author_id INT
);

CREATE TABLE IF NOT EXISTS authors(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT
);

CREATE TABLE IF NOT EXISTS customers(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT,
  member_since DATE
);

CREATE TABLE IF NOT EXISTS orders(
  id SERIAL PRIMARY KEY NOT NULL,
  shipping_label JSONB,
  customer_id INT
);

CREATE TABLE IF NOT EXISTS books_ordered(
  book_id INT,
  order_id INT
);

CREATE TABLE IF NOT EXISTS reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  text TEXT,
  customer_id INT,
  book_id INT
);

ALTER TABLE reviews
  ADD CONSTRAINT fk_customer
  FOREIGN KEY (customer_id)
  REFERENCES customers(id);

ALTER TABLE reviews
  ADD CONSTRAINT fk_book
  FOREIGN KEY (book_id)
  REFERENCES books(id);

ALTER TABLE books
  ADD CONSTRAINT fk_author
  FOREIGN KEY (author_id)
  REFERENCES authors(id);

ALTER TABLE books_ordered
  ADD CONSTRAINT fk_book_ordered
  FOREIGN KEY (book_id)
  REFERENCES books(id);

ALTER TABLE books_ordered
  ADD CONSTRAINT fk_order_placed
  FOREIGN KEY (order_id)
  REFERENCES orders(id);

ALTER TABLE orders
  ADD CONSTRAINT fk_customer
  FOREIGN KEY (customer_id)
  REFERENCES customers(id);

CREATE UNIQUE INDEX customer_name
  on customers(name);

CREATE UNIQUE INDEX author_name
  on authors(name);

CREATE UNIQUE INDEX book_title
  on books(title);
