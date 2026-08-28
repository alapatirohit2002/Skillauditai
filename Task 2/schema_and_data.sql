-- 1. Customers Dimension Table
CREATE TABLE dim_customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

-- 2. Orders Fact Table (Amounts in INR)
CREATE TABLE fct_orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    category VARCHAR(50),
    order_amount DECIMAL(10, 2),
    payment_method VARCHAR(30),
    order_status VARCHAR(20),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id)
);

-- Insert 6 Customers
INSERT INTO dim_customers VALUES
(1, 'Aarav Sharma', 'Bengaluru', 'Karnataka'),
(2, 'Priya Patel', 'Mumbai', 'Maharashtra'),
(3, 'Rohan Verma', 'Delhi', 'Delhi'),
(4, 'Sneha Reddy', 'Hyderabad', 'Telangana'),
(5, 'Vikram Singh', 'Jaipur', 'Rajasthan'),
(6, 'Ananya Iyer', 'Chennai', 'Tamil Nadu');

-- Insert 10 Orders
INSERT INTO fct_orders VALUES
(101, 1, 'Electronics', 5500.00, 'UPI', 'Delivered', '2024-05-01'),
(102, 2, 'Home & Kitchen', 9999.00, 'Credit Card', 'Delivered', '2024-05-03'),
(103, 3, 'Electronics', 4999.00, 'Net Banking', 'Delivered', '2024-05-07'),
(104, 1, 'Books', 1899.00, 'UPI', 'Delivered', '2024-05-15'),
(105, 6, 'Apparel', 4399.00, 'Debit Card', 'Cancelled', '2024-05-20'),
(106, 5, 'Apparel', 3899.00, 'Cash on Delivery', 'Delivered', '2024-06-02'),
(107, 4, 'Electronics', 7499.00, 'UPI', 'Delivered', '2024-06-10'),
(108, 2, 'Apparel', 2199.00, 'Credit Card', 'Delivered', '2024-06-18'),
(109, 3, 'Books', 3899.00, 'UPI', 'Delivered', '2024-06-25'),
(110, 1, 'Electronics', 3499.00, 'UPI', 'Delivered', '2024-07-02');