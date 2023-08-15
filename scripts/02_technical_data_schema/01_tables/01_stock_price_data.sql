--liquibase formatted sql

--changeset piyush:stock_price_data_1
create table if not exists technical_data.stock_price_data(
    nse_symbol varchar,
    price_date date,
    opening_price numeric,
    high_price numeric,
    low_price numeric,
    closing_price numeric,
    PRIMARY KEY(nse_symbol,price_date)
)