CREATE SCHEMA example.example_s3_schema WITH (location = 's3://warehouse/test');

USE example.example_s3_schema;

CREATE TABLE customer AS SELECT * FROM tpch.sf1.customer;
CREATE TABLE lineitem AS SELECT * FROM  tpch.sf1.lineitem;
CREATE TABLE nation AS SELECT * FROM  tpch.sf1.nation;
CREATE TABLE orders AS SELECT * FROM  tpch.sf1.orders;
CREATE TABLE part AS SELECT * FROM  tpch.sf1.part;
CREATE TABLE partsupp AS SELECT * FROM  tpch.sf1.partsupp;
CREATE TABLE region AS SELECT * FROM  tpch.sf1.region;
CREATE TABLE supplier AS SELECT * FROM  tpch.sf1.supplier;

