-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-02-25 14:35:02.663

-- tables
-- Table: bill
CREATE TABLE bill (
    bill_id bigint(20) NOT NULL,
    total double NULL DEFAULT NULL,
    payment varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    address longtext COLLATE utf8_unicode_ci NULL,
    date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    users_user_id bigint(20) NOT NULL,
    CONSTRAINT bill_pk PRIMARY KEY (bill_id)
) ENGINE MyISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Table: bill_detail
CREATE TABLE bill_detail (
    bill_detail_id bigint(20) NOT NULL AUTO_INCREMENT,
    bill_id bigint(20) NULL DEFAULT NULL,
    product_id bigint(20) NULL DEFAULT NULL,
    price double NULL DEFAULT NULL,
    quantity int(11) NULL DEFAULT NULL,
    bill_bill_id bigint(20) NOT NULL,
    product_product_id bigint(20) NOT NULL,
    CONSTRAINT bill_detail_pk PRIMARY KEY (bill_detail_id)
) ENGINE MyISAM;

-- Table: category
CREATE TABLE category (
    category_id bigint(20) NOT NULL,
    category_name varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    CONSTRAINT category_pk PRIMARY KEY (category_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Table: product
CREATE TABLE product (
    product_id bigint(20) NOT NULL AUTO_INCREMENT,
    category_id bigint(20) NULL DEFAULT NULL,
    product_name varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    product_image varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    product_price double NULL DEFAULT NULL,
    product_description longtext COLLATE utf8_unicode_ci NULL,
    category_category_id bigint(20) NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_id)
) ENGINE InnoDB;

-- Table: users
CREATE TABLE users (
    user_id bigint(20) NOT NULL,
    user_email varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    user_pass varchar(255) COLLATE utf8_unicode_ci NULL DEFAULT NULL,
    user_role bigint NULL DEFAULT NULL,
    CONSTRAINT users_pk PRIMARY KEY (user_id)
) ENGINE MyISAM CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- foreign keys
-- Reference: bill_detail_bill (table: bill_detail)
ALTER TABLE bill_detail ADD CONSTRAINT bill_detail_bill FOREIGN KEY bill_detail_bill (bill_bill_id)
    REFERENCES bill (bill_id);

-- Reference: bill_detail_product (table: bill_detail)
ALTER TABLE bill_detail ADD CONSTRAINT bill_detail_product FOREIGN KEY bill_detail_product (product_product_id)
    REFERENCES product (product_id);

-- Reference: bill_users (table: bill)
ALTER TABLE bill ADD CONSTRAINT bill_users FOREIGN KEY bill_users (users_user_id)
    REFERENCES users (user_id);

-- Reference: product_category (table: product)
ALTER TABLE product ADD CONSTRAINT product_category FOREIGN KEY product_category (category_category_id)
    REFERENCES category (category_id);

-- End of file.

