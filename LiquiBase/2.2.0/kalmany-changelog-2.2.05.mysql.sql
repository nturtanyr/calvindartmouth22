-- liquibase formatted sql

-- changeset Stanley:02020501 labels:v2.2.0
ALTER TABLE citizens_status ADD chi INT DEFAULT 1000 NOT NULL;

-- changeset Stanley:02020502 labels:v2.2.0
ALTER TABLE citizens_status ADD birth_date INT NOT NULL;

-- changeset Stanley:02020503 labels:v2.2.0
ALTER TABLE citizens_status ADD death_date INT NULL;

-- changeset Stanley:02020504 labels:v2.2.0
ALTER TABLE citizens_status DROP COLUMN feng_shui;

-- changeset Stanley:02020505 labels:v2.2.0
ALTER TABLE citizens_status ALTER energy SET DEFAULT 1000;

-- changeset Stanley:02020506 labels:v2.2.0
ALTER TABLE citizens_status ALTER hunger SET DEFAULT 1000;

-- changeset Stanley:02020507 labels:v2.2.0
ALTER TABLE citizens_status ALTER joy SET DEFAULT 1000;

-- changeset Stanley:02020508 labels:v2.2.0
ALTER TABLE citizens_status ALTER warmth SET DEFAULT 1000;

