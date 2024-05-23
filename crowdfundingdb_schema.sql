-- Create tables

-- Table of Campaign

CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(40)   NOT NULL,
    description VARCHAR(60)   NOT NULL,
    goal FLOAT  NOT NULL,
    pledged FLOAT  NOT NULL,
    outcome CHAR(10)   NOT NULL,
    backers_count INT   NOT NULL,
    country CHAR(10)   NOT NULL,
    currency CHAR(10)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(10)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
    PRIMARY KEY (cf_id)
    FOREIGN KEY (category_id) REFERENCES category (category_id)
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);

SELECT * FROM campaign;

-- Table of Category

CREATE TABLE category (
    category_id VARCHAR(10)   NOT NULL,
    category VARCHAR(20)   NOT NULL,
    PRIMARY KEY (category_id)
);

SELECT * FROM category;

-- Table of Subcategory

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)  NOT NULL,
    subcategory VARCHAR(20)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory;

-- Table of Contacts 

CREATE TABLE contacts (
    contact_id INT  NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    email VARCHAR(50)   NOT NULL,
    PRIMARY KEY (contact_id)       
);

SELECT * FROM contacts;

