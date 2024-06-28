CREATE TABLE
    "passengers" (
        "id" INTEGER,
        "first_name" TEXT,
        "last_name" TEXT,
        "age" INTEGER,
        PRIMARY KEY ("id")
    );

CREATE TABLE
    "check-ins" (
        "passenger_id" INTEGER,
        "flight_id" INTEGER,
        "datetime" NUMERIC DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY ("passenger_id") REFERENCES "passengers" ("id"),
        FOREIGN KEY ("flight_id") REFERENCES "flights" ("id")
    );

CREATE TABLE
    "airlines" (
        "id" INTEGER,
        "name" TEXT,
        "section" TEXT,
        PRIMARY KEY ("id")
    );

CREATE TABLE
    "flights" (
        "id" INTEGER,
        "flight_number" INTEGER,
        "airline_id" INTEGER,
        "from_code" TEXT,
        "to_code" TEXT,
        "departure_datetime" NUMERIC,
        "arrival_datetime" NUMERIC,
        PRIMARY KEY ("id"),
        FOREIGN KEY ("airline_id") REFERENCES "airlines" ("id")
    );
