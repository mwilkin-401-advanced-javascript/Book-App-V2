DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS bookshelves;

CREATE TABLE IF NOT EXISTS bookshelves (
 id SERIAL PRIMARY KEY, 
 name VARCHAR(255)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  isbn TEXT,
  image_url TEXT,
  description TEXT,
  bookshelf_id INT REFERENCES bookshelves(id)
);

