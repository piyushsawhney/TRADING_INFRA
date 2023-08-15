--liquibase formatted sql

--changeset piyush:open_interest_data_table_1
create table if not exists technical_data.open_interest_data(
    nse_symbol varchar,
    nse_symbol_type varchar,
    expiry_date date,
    price_date date,
    open_interest integer,
    PRIMARY KEY(nse_symbol,nse_symbol_type,expiry_date,price_date)
)