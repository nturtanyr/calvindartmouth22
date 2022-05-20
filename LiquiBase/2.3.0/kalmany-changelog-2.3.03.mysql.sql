-- liquibase formatted sql

-- changeset Stanley:02030301 labels:v2.3.0
ALTER TABLE citizens_personality_map DROP FOREIGN KEY citizen_map_personality

-- changeset Stanley:02030302 labels:v2.3.0
ALTER TABLE citizens_personality_map ADD CONSTRAINT personality_map_personality
  FOREIGN KEY (personality_id)
  REFERENCES     citizens_personality (id)

-- changeset Stanley:02030303 labels:v2.3.0
ALTER TABLE citizens_redflag_map ADD INDEX redflag_map_personality_idx (personality_id ASC) VISIBLE;

-- changeset Stanley:02030304 labels:v2.3.0
ALTER TABLE citizens_redflag_map ADD CONSTRAINT redflag_map_citizen
  FOREIGN KEY (citizen_id)
  REFERENCES     citizens_citizen (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION

-- changeset Stanley:02030305 labels:v2.3.0
ALTER TABLE citizens_redflag_map ADD CONSTRAINT redflag_map_personality
  FOREIGN KEY (personality_id)
  REFERENCES     citizens_personality (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
