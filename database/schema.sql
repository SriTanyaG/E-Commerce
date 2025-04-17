-- Table: users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP
);

-- Table: products
CREATE TABLE products (
    uniq_id VARCHAR(50) PRIMARY KEY,
    product_name TEXT,
    retail_price NUMERIC,
    discounted_price NUMERIC,
    image TEXT,
    description TEXT,
    created_at TIMESTAMP
);

-- Table: cart
CREATE TABLE cart (
    cart_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    uniq_id VARCHAR(50) NOT NULL,
    quantity INTEGER,
    added_at TIMESTAMP
);

-- Table: wishlist
CREATE TABLE wishlist (
    wishlist_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    uniq_id VARCHAR(50) NOT NULL,
    added_at TIMESTAMP
);

-- Table: orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    total_amount NUMERIC,
    order_status VARCHAR(50),
    ordered_at TIMESTAMP
);

-- Table: order_items
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    uniq_id VARCHAR(50) NOT NULL,
    quantity INTEGER,
    price_per_unit NUMERIC,
    total_price NUMERIC
);
