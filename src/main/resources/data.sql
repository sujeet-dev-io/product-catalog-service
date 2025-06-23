CREATE TABLE product (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(255),
    price DOUBLE
);
INSERT INTO product (name, description, price) VALUES
('Laptop', 'A high performance laptop', 75000),
('Smartphone', 'Android phone with great camera', 25000),
('Headphones', 'Noise cancelling headphones', 4000);
