-- liquibase formatted sql

-- changeset Stanley:02020401 labels:v2.2.0
CREATE TABLE citizens_family_map (id INT AUTO_INCREMENT NOT NULL, child_id INT NULL, mother_id INT NULL, father_id INT NULL, CONSTRAINT PK_CITIZENS_FAMILY_MAP PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02020402 labels:v2.2.0
CREATE INDEX family_child_idx ON citizens_family_map(child_id);

-- changeset Stanley:02020403 labels:v2.2.0
CREATE INDEX family_father_idx ON citizens_family_map(father_id);

-- changeset Stanley:02020404 labels:v2.2.0
CREATE INDEX family_mother_idx ON citizens_family_map(mother_id);

-- changeset Stanley:02020405 labels:v2.2.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_child FOREIGN KEY (child_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02020406 labels:v2.2.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_father FOREIGN KEY (father_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02020407 labels:v2.2.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_mother FOREIGN KEY (mother_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;
