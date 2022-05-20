-- liquibase formatted sql

-- changeset Stanley:02020101 labels:v2.2.0
CREATE TABLE general_clock (datetime INT NOT NULL, CONSTRAINT PK_GENERAL_CLOCK PRIMARY KEY (datetime), UNIQUE (datetime));
