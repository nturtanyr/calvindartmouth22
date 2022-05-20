-- liquibase formatted sql

-- changeset Stanley:02030401 labels:v2.3.0
ALTER TABLE parties_sympathies ADD INDEX sympathy_party_idx (party_id ASC) VISIBLE;

-- changeset Stanley:02030402 labels:v2.3.0
ALTER TABLE parties_sympathies ADD CONSTRAINT sympathy_party
  FOREIGN KEY (party_id)
  REFERENCES     parties_party (id)
  ON DELETE CASCADE
  ON UPDATE CASCADE
