
CREATE TABLE SUPPLIER
(
	supplier_id          INTEGER NOT NULL,
	supplier_name        VARCHAR(20) NULL,
	country              VARCHAR(20) NULL,
	status               VARCHAR(20) NULL,
	PRIMARY KEY (supplier_id)
);



CREATE UNIQUE INDEX XPKSUPPLIER ON SUPPLIER
(
	supplier_id
);



CREATE TABLE WAREHOUSE
(
	warehouse_id         INTEGER NOT NULL,
	warehouse_name       VARCHAR(20) NULL,
	city                 VARCHAR(20) NULL,
	country              VARCHAR(20) NULL,
	capacity             INTEGER NULL,
	status               VARCHAR(20) NULL,
	PRIMARY KEY (warehouse_id)
);



CREATE UNIQUE INDEX XPKWAREHOUSE ON WAREHOUSE
(
	warehouse_id
);



CREATE TABLE PURCHASE_ORDER
(
	po_id                INTEGER NOT NULL,
	order_date           DATE NULL,
	expected_delivery_date DATE NULL,
	actual_delivery_date DATE NULL,
	po_status            VARCHAR(20) NULL,
	total_amount         INTEGER NULL,
	supplier_id          INTEGER NULL,
	warehouse_id         INTEGER NULL,
	PRIMARY KEY (po_id),
	FOREIGN KEY R_1 (supplier_id) REFERENCES SUPPLIER (supplier_id),
	FOREIGN KEY R_2 (warehouse_id) REFERENCES WAREHOUSE (warehouse_id)
);



CREATE UNIQUE INDEX XPKPURCHASE_ORDER ON PURCHASE_ORDER
(
	po_id
);



CREATE INDEX XIF1PURCHASE_ORDER ON PURCHASE_ORDER
(
	supplier_id
);



CREATE INDEX XIF2PURCHASE_ORDER ON PURCHASE_ORDER
(
	warehouse_id
);



CREATE TABLE PRODUCT
(
	product_id           INTEGER NOT NULL,
	product_name         VARCHAR(20) NULL,
	category             VARCHAR(20) NULL,
	unit_price           INTEGER NULL,
	standard_lead_time   INTEGER NULL,
	status               VARCHAR(20) NULL,
	PRIMARY KEY (product_id)
);



CREATE UNIQUE INDEX XPKPRODUCT ON PRODUCT
(
	product_id
);



CREATE TABLE PURCHASE_ORDER_DETAIL
(
	po_detail_id         INTEGER NOT NULL,
	quantity             INTEGER NULL,
	unit_price           INTEGER NULL,
	po_id                INTEGER NULL,
	product_id           INTEGER NULL,
	PRIMARY KEY (po_detail_id),
	FOREIGN KEY R_9 (po_id) REFERENCES PURCHASE_ORDER (po_id),
	FOREIGN KEY R_10 (product_id) REFERENCES PRODUCT (product_id)
);



CREATE UNIQUE INDEX XPKPURCHASE_ORDER_DETAIL ON PURCHASE_ORDER_DETAIL
(
	po_detail_id
);



CREATE INDEX XIF1PURCHASE_ORDER_DETAIL ON PURCHASE_ORDER_DETAIL
(
	po_id
);



CREATE INDEX XIF2PURCHASE_ORDER_DETAIL ON PURCHASE_ORDER_DETAIL
(
	product_id
);



CREATE TABLE ACTUAL_DEMAND
(
	actual_demand_id     INTEGER NOT NULL,
	demand_period        DATE NULL,
	actual_quantity      INTEGER NULL,
	recorded_date        DATE NULL,
	product_id           INTEGER NULL,
	warehouse_id         INTEGER NULL,
	PRIMARY KEY (actual_demand_id),
	FOREIGN KEY R_7 (product_id) REFERENCES PRODUCT (product_id),
	FOREIGN KEY R_8 (warehouse_id) REFERENCES WAREHOUSE (warehouse_id)
);



CREATE UNIQUE INDEX XPKACTUAL_DEMAND ON ACTUAL_DEMAND
(
	actual_demand_id
);



CREATE INDEX XIF1ACTUAL_DEMAND ON ACTUAL_DEMAND
(
	product_id
);



CREATE INDEX XIF2ACTUAL_DEMAND ON ACTUAL_DEMAND
(
	warehouse_id
);



CREATE TABLE FORECAST
(
	forecast_id          INTEGER NOT NULL,
	forecast_period      DATE NULL,
	forecast_quantity    INTEGER NULL,
	created_date         DATE NULL,
	product_id           INTEGER NULL,
	warehouse_id         INTEGER NULL,
	PRIMARY KEY (forecast_id),
	FOREIGN KEY R_5 (product_id) REFERENCES PRODUCT (product_id),
	FOREIGN KEY R_6 (warehouse_id) REFERENCES WAREHOUSE (warehouse_id)
);



CREATE UNIQUE INDEX XPKFORECAST ON FORECAST
(
	forecast_id
);



CREATE INDEX XIF1FORECAST ON FORECAST
(
	product_id
);



CREATE INDEX XIF2FORECAST ON FORECAST
(
	warehouse_id
);



CREATE TABLE INVENTORY
(
	inventory_id         INTEGER NOT NULL,
	stock_quantity       INTEGER NULL,
	reorder_level        INTEGER NULL,
	safety_stock         INTEGER NULL,
	last_updated         DATE NULL,
	warehouse_id         INTEGER NULL,
	product_id           INTEGER NULL,
	PRIMARY KEY (inventory_id),
	FOREIGN KEY R_3 (warehouse_id) REFERENCES WAREHOUSE (warehouse_id),
	FOREIGN KEY R_4 (product_id) REFERENCES PRODUCT (product_id)
);



CREATE UNIQUE INDEX XPKINVENTORY ON INVENTORY
(
	inventory_id
);



CREATE INDEX XIF1INVENTORY ON INVENTORY
(
	warehouse_id
);



CREATE INDEX XIF2INVENTORY ON INVENTORY
(
	product_id
);


