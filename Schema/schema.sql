CREATE TABLE Item (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    genre VARCHAR(255),
    author VARCHAR(255),
    label VARCHAR(255),
    publish_date VARCHAR(255),
    archived BOOLEAN,
)
