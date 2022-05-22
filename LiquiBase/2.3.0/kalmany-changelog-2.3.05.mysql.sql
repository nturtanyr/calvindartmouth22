-- liquibase formatted sql

-- changeset Stanley:02030405 labels:v2.3.0
INSERT INTO citizens_status (citizen_id, state_id, metastatus, birth_date)
SELECT ci.id, 14, 0, DATE_FORMAT( DATE_ADD( NOW() , INTERVAL (-3*ci.age) DAY) , '%Y%m%d')
FROM citizens_citizen ci;