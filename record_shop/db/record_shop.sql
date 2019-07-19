DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS record_labels;
DROP TABLE IF EXISTS years;
DROP TABLE IF EXISTS formats;

CREATE TABLE formats(
  id SERIAL4 PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE years(
  id SERIAL4 PRIMARY KEY,
  year INT4
);

CREATE TABLE record_labels(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE products(
  id SERIAL4 PRIMARY KEY,
  artist VARCHAR(255),
  title VARCHAR(255),
  quantity INT4,
  cost_price INT4,
  retail_price INT4,
  img_url VARCHAR(255),
  record_label_id INT4 REFERENCES record_labels (id),
  year_id INT4 REFERENCES years (id),
  format_id INT4 REFERENCES formats (id)
);
