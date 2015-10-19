-- DROP DATABASE if exists url_shortener_zoe_adelman;
-- ---

-- CREATE DATABASE url_shortener_zoe_adelman;

DROP TABLE if exists urls;

CREATE TABLE urls (id SERIAL, original_url text NOT NULL, count numeric DEFAULT 0);

INSERT INTO urls (original_url, count) VALUES
      ('www.galvanize.com', 2),
      ('www.etsy.com', 1),
      ('www.freepeople.com', 3),
      ('www.gschool.com', 5),
      ('www.amazon.com', 4);

SELECT * FROM urls;
