DROP TABLE IF EXISTS books;

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  isbn TEXT,
  image_url TEXT,
  description TEXT,
  bookshelf VARCHAR(255)
);

<!-- Create bookshelves table -->
CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

<!-- Select distinct bookshelves from the books table and insert into the bookshelves table -->
INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

<!-- Alter the books table to include a field for bookshelf id -->
ALTER TABLE books ADD COLUMN bookshelf_id INT;

<!-- Retrieves the primary key on each bookshelf and fills in the bookshelf id field in the books table -->
UPDATE books SET bookshelf_id=subquery.id FROM (SELECT * FROM bookshelves) AS subquery WHERE books.bookshelf = subquery.name;

<!-- Remove the bookshelf table from the books table, which is no longer needed -->
ALTER TABLE books DROP COLUMN bookshelf;

<!-- Set the bookshelf_id as the foreign key of the books table -->
ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);