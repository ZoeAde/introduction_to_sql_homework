DROP TABLE if exists urls;

--Create a new table called 'urls'. This table should have the columns that you need to store a shortened URL (id, original_url and count)
CREATE TABLE urls (id SERIAL, original_url text NOT NULL, count numeric DEFAULT 0);

-- Insert 5 rows of data into the 'urls' table.
INSERT INTO urls (original_url, count) VALUES
      ('www.galvanize.com', 2),
      ('www.etsy.com', 1),
      ('www.freepeople.com', 3),
      ('www.gschool.com', 5),
      ('www.amazon.com', 4);

--Display all of the rows in the urls table with all of the columns
SELECT * FROM urls;

--Display all of the rows in the urls table with only the original_url column
SELECT original_url FROM urls;

--Display one row from the urls table with a specific id
SELECT * FROM urls WHERE id = 1;

--Display one row from the urls table with a specific original_url
SELECT * FROM urls WHERE ORIGINAL_URL LIKE 'www.amazon.com';

--Update one of the rows with a specific id to have a new count
UPDATE urls SET count = '6' WHERE count = '4';

--Delete one row that matches an original_url
DELETE FROM urls WHERE ORIGINAL_URL = 'www.freepeople.com';







