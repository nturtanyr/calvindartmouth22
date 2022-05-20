-- liquibase formatted sql

-- changeset Stanley:02020301 labels:v2.2.0
ALTER TABLE monuments_monument MODIFY `description` MEDIUMTEXT;
