CREATE TABLE "books" (
    "id" serial primary key,
    "book_name" varchar(255) not null,
    "book_author" varchar(255) not null,
    "publication_year" int not null
);
-- add new column
ALTER TABLE "books"
ADD COLUMN "category_id" INT;

ALTER TABLE "books"
ADD COLUMN "bookshelf_id" INT;

-- add new contraints
alter table "books"
add constraint "books_category"
foreign key ("category_id")
REFERENCES "category" ("id");

alter table "books"
add constraint "books_bookshelf"
foreign key ("bookshelf_id")
REFERENCES "bookshelf" ("id");


SELECT "id", "book_name", "book_author", "publication_year" from "books";

create table "category"(
    "id" int generated always as identity primary key,
    "category_name" varchar(255) not null
);

SELECT "id", "category_name" from "category"

-- BOOKSHELF{
--     INT ID PK
--     STRING SECTION
-- }

create table "bookshelf" (
    "id" int generated always as identity primary key,
    "section" varchar(10)
);

SELECT "id", "section" from "bookshelf";

-- OFFICER {
--     INT ID PK
--     STRING OFFICER_NAME
-- }

create table "officer" (
    "id" int generated always as identity primary key,
    "officer_name" varchar(255)
);

SELECT "id", "officer_name" from "officer";

-- BORROWER {
--     INT ID PK
--     STRING BORROWER_NAME
-- }

create table "borrower" (
    "id" int generated always as identity primary key,
    "borrower_name" varchar(255)
);

SELECT "id", "borrower_name" from "borrower";

-- BORROW_TRANSACTION {
--     INT ID PK
--     DATE BORROW_DATE
--     DATE RETURN_DATE
--     INT BORROWER_ID FK
--     INT BOOK_ID FK
--     INT OFFICER_ID FK
-- }

create table "borrow_transaction" (
    "id" int generated always as identity primary key,
    "borrow_date" timestamp not null,
    "return_date" timestamp not null,
    "borrower_id" int,
    "book_id" int,
    "officer_id" int,
    foreign key ("borrower_id") references "borrower" ("id"),
    foreign key ("book_id") references "books" ("id"),
    foreign key ("officer_id") references "officer" ("id")
)
