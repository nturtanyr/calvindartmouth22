-- liquibase formatted sql

-- changeset Stanley:02030101 labels:v2.3.0
ALTER TABLE citizens_bio_attraction_map ADD INDEX bio_attraction_map_sex_idx (sex_id ASC) VISIBLE;

-- changeset Stanley:02030102 labels:v2.3.0
ALTER TABLE citizens_bio_attraction_map ADD CONSTRAINT bio_attraction_map_citizen 
  FOREIGN KEY (citizen_id)
  REFERENCES     citizens_citizen (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION

-- changeset Stanley:02030103 labels:v2.3.0
ALTER TABLE citizens_bio_attraction_map ADD CONSTRAINT bio_attraction_map_sex
  FOREIGN KEY (sex_id)
  REFERENCES     citizens_sex (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION