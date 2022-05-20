-- liquibase formatted sql

-- changeset Stanley:02020201 labels:v2.2.0
ALTER TABLE relationships_relationship ADD start_date INT NOT NULL;

-- changeset Stanley:02020202 labels:v2.2.0
ALTER TABLE relationships_relationship ADD end_date INT NULL;