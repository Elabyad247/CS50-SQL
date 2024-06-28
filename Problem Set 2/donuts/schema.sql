CREATE TABLE
    "ingredients" (
        "id" INTEGER,
        "name" TEXT NOT NULL,
        "price_per_unit" NUMERIC NOT NULL,
        PRIMARY KEY ("id")
    );

CREATE TABLE
    "donuts" (
        "id" INTEGER,
        "name" TEXT NOT NULL,
        "gluten-free" INTEGER NOT NULL,
        "price" NUMERIC NOT NULL,
        PRIMARY KEY ("id")
    );

CREATE TABLE
    "donuts_ingredients" (
        "donut_id" INTEGER,
        "ingredient_id" INTEGER,
        FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id"),
        FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("id")
    );

CREATE TABLE
    "orders" (
        "order_no" INTEGER,
        "customer_id" INTEGER,
        PRIMARY KEY ("order_no"),
        FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
    );

CREATE TABLE
    "customers" (
        "id" INTEGER,
        "fisrt_name" TEXT NOT NULL,
        "last_name" TEXT NOT NULL,
        PRIMARY KEY ("id")
    );

CREATE TABLE
    "orders_donuts" (
        "order_no" INTEGER,
        "donut_id" INTEGER,
        FOREIGN KEY ("order_no") REFERENCES "orders" ("order_no"),
        FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id")
    );
