CREATE TABLE Item (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    genre VARCHAR(255),
    author VARCHAR(255),
    label VARCHAR(255),
    publish_date VARCHAR(255),
    archived BOOLEAN
)

CREATE TABLE Genre (
   id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
   name VARCHAR(255),
   items INT FOREIGN KEY REFERENCES item(id)
)

CREATE TABLE Books (
   id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
   author_id INT NULL REFERENCES authors(id),
   genre_id INT NULL REFERENCES genres(id),
   label_id INT NULL REFERENCES labels(id)
   publisher VARCHAR(255),
   publish_date DATE NOT NULL,
   cover_state VARCHAR(255),
   archived BOOLEAN NOT NULL
)