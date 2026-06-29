```sql
CREATE DATABASE db_node_crud;
USE db_node_crud;

-- =====================================================
-- TABLE : PRODUCT
-- =====================================================
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    product_price DECIMAL(12,2) NOT NULL DEFAULT 0
);

-- =====================================================
-- TABLE : KATEGORI
-- =====================================================
CREATE TABLE kategori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kode_kat VARCHAR(20) NOT NULL,
    nama VARCHAR(100) NOT NULL
);

-- =====================================================
-- TABLE : CUSTOMER
-- =====================================================
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(150) NOT NULL,
    alamat TEXT,
    notlp VARCHAR(25),
    nohp VARCHAR(25),
    pos VARCHAR(10)
);

-- =====================================================
-- TABLE : PENJUALAN
-- =====================================================
CREATE TABLE penjualan (
    id INT AUTO_INCREMENT PRIMARY KEY,

    customer INT NOT NULL,
    product INT NOT NULL,
    kategori INT NOT NULL,

    qty INT NOT NULL DEFAULT 1,

    total DECIMAL(12,2) NOT NULL,

    tanggal DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_penjualan_customer
        FOREIGN KEY(customer)
        REFERENCES customer(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_penjualan_product
        FOREIGN KEY(product)
        REFERENCES product(product_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_penjualan_kategori
        FOREIGN KEY(kategori)
        REFERENCES kategori(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
```
