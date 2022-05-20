-- liquibase formatted sql

-- changeset Stanley:02030201 labels:v2.3.0
ALTER TABLE citizens_family_map DROP FOREIGN KEY family_child

-- changeset Stanley:02030202 labels:v2.3.0
ALTER TABLE citizens_family_map DROP FOREIGN KEY family_father

-- changeset Stanley:02030203 labels:v2.3.0
ALTER TABLE citizens_family_map DROP FOREIGN KEY family_mother

-- changeset Stanley:02030204 labels:v2.3.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_map_child
  FOREIGN KEY (child_id)
  REFERENCES     citizens_citizen (id)

-- changeset Stanley:02030205 labels:v2.3.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_map_father
  FOREIGN KEY (father_id)
  REFERENCES     citizens_citizen (id)

-- changeset Stanley:02030206 labels:v2.3.0
ALTER TABLE citizens_family_map ADD CONSTRAINT family_map_mother
  FOREIGN KEY (mother_id)
  REFERENCES     citizens_citizen (id)
