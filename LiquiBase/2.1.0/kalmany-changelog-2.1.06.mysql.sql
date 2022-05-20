-- liquibase formatted sql

-- changeset Stanley:02010601 labels:v2.1.0
CREATE TABLE citizens_citizen (id INT AUTO_INCREMENT NOT NULL, first_name VARCHAR(32) NOT NULL, last_name VARCHAR(32) NOT NULL, ethnicity_id INT NOT NULL, industry_id INT NOT NULL, religion_id INT NOT NULL, sex_id INT NOT NULL, sexuality_id INT NOT NULL, wears_socks TINYINT(3) NOT NULL, `like` VARCHAR(64) NOT NULL, dislike VARCHAR(64) NOT NULL, constituency_id INT NOT NULL, home_constituency_id INT NOT NULL, age INT NOT NULL, zodiac_id INT DEFAULT 1 NOT NULL, agegroup_id INT DEFAULT 1 NOT NULL, gender_id INT DEFAULT 1 NOT NULL, CONSTRAINT PK_CITIZENS_CITIZEN PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02010602 labels:v2.1.0
CREATE INDEX `citizen industry_idx` ON citizens_citizen(industry_id);

-- changeset Stanley:02010603 labels:v2.1.0
CREATE INDEX citizen_agegroup_idx ON citizens_citizen(agegroup_id);

-- changeset Stanley:02010604 labels:v2.1.0
CREATE INDEX citizen_constituency_idx ON citizens_citizen(constituency_id, home_constituency_id);

-- changeset Stanley:02010605 labels:v2.1.0
CREATE INDEX citizen_ethnicity_idx ON citizens_citizen(ethnicity_id);

-- changeset Stanley:02010606 labels:v2.1.0
CREATE INDEX citizen_gender_idx ON citizens_citizen(gender_id);

-- changeset Stanley:02010607 labels:v2.1.0
CREATE INDEX citizen_home_constituency_idx ON citizens_citizen(home_constituency_id);

-- changeset Stanley:02010608 labels:v2.1.0
CREATE INDEX citizen_religion_idx ON citizens_citizen(religion_id);

-- changeset Stanley:02010609 labels:v2.1.0
CREATE INDEX citizen_sex_idx ON citizens_citizen(sex_id);

-- changeset Stanley:02010610 labels:v2.1.0
CREATE INDEX citizen_sexuality_idx ON citizens_citizen(sexuality_id);

-- changeset Stanley:02010611 labels:v2.1.0
CREATE INDEX citizen_zodiac_idx ON citizens_citizen(zodiac_id);

-- changeset Stanley:02010612 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_agegroup FOREIGN KEY (agegroup_id) REFERENCES citizens_agegroups (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010613 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_constituency FOREIGN KEY (constituency_id) REFERENCES constituencies_constituency (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010614 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_ethnicity FOREIGN KEY (ethnicity_id) REFERENCES citizens_ethnicity (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010615 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_gender FOREIGN KEY (gender_id) REFERENCES citizens_gender (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010616 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_home_constituency FOREIGN KEY (home_constituency_id) REFERENCES constituencies_constituency (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010617 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_industry FOREIGN KEY (industry_id) REFERENCES citizens_industry (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010618 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_religion FOREIGN KEY (religion_id) REFERENCES citizens_religion (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010619 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_sex FOREIGN KEY (sex_id) REFERENCES citizens_sex (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010620 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_sexuality FOREIGN KEY (sexuality_id) REFERENCES citizens_sexuality (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010621 labels:v2.1.0
ALTER TABLE citizens_citizen ADD CONSTRAINT citizen_zodiac FOREIGN KEY (zodiac_id) REFERENCES citizens_zodiac (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010622 labels:v2.1.0
CREATE TABLE citizens_bio_attraction_map (citizen_id INT NOT NULL, sex_id INT NOT NULL, value INT DEFAULT 0 NOT NULL, CONSTRAINT PK_CITIZENS_BIO_ATTRACTION_MAP PRIMARY KEY (citizen_id, sex_id));

-- changeset Stanley:02010623 labels:v2.1.0
CREATE TABLE citizens_personality_map (citizen_id INT NOT NULL, personality_id INT NOT NULL, CONSTRAINT PK_CITIZENS_PERSONALITY_MAP PRIMARY KEY (citizen_id, personality_id));

-- changeset Stanley:02010624 labels:v2.1.0
ALTER TABLE citizens_personality_map ADD CONSTRAINT UC_citizen_personality UNIQUE (citizen_id, personality_id);

-- changeset Stanley:02010625 labels:v2.1.0
CREATE INDEX personality_map_personality_idx ON citizens_personality_map(personality_id);

-- changeset Stanley:02010626 labels:v2.1.0
ALTER TABLE citizens_personality_map ADD CONSTRAINT citizen_map_personality FOREIGN KEY (personality_id) REFERENCES citizens_personality (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010627 labels:v2.1.0
ALTER TABLE citizens_personality_map ADD CONSTRAINT personality_map_citizen FOREIGN KEY (citizen_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010628 labels:v2.1.0
CREATE TABLE citizens_redflag_map (citizen_id INT NOT NULL, personality_id INT NOT NULL, CONSTRAINT PK_CITIZENS_REDFLAG_MAP PRIMARY KEY (citizen_id, personality_id));

-- changeset Stanley:02010629 labels:v2.1.0
ALTER TABLE citizens_redflag_map ADD CONSTRAINT UC_citizen_redflag UNIQUE (citizen_id, personality_id);

-- changeset Stanley:02010630 labels:v2.1.0
CREATE TABLE citizens_status (citizen_id INT AUTO_INCREMENT NOT NULL, state_id INT NOT NULL, metastatus INT NOT NULL, hunger INT DEFAULT 100 NOT NULL, energy INT DEFAULT 100 NOT NULL, warmth INT DEFAULT 100 NOT NULL, joy INT DEFAULT 100 NOT NULL, feng_shui INT DEFAULT 100 NOT NULL, CONSTRAINT PK_CITIZENS_STATUS PRIMARY KEY (citizen_id), UNIQUE (citizen_id));

-- changeset Stanley:02010631 labels:v2.1.0
CREATE INDEX status_state_idx ON citizens_status(state_id);

-- changeset Stanley:02010632 labels:v2.1.0
ALTER TABLE citizens_status ADD CONSTRAINT status_citizen FOREIGN KEY (citizen_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010633 labels:v2.1.0
ALTER TABLE citizens_status ADD CONSTRAINT status_state FOREIGN KEY (state_id) REFERENCES citizens_state (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010634 labels:v2.1.0
CREATE TABLE relationships_relationship (id INT AUTO_INCREMENT NOT NULL, dominator_id INT NOT NULL, submitter_id INT NOT NULL, status_id INT NOT NULL, dominator_happiness INT DEFAULT 50 NOT NULL, submitter_happiness INT DEFAULT 50 NOT NULL, CONSTRAINT PK_RELATIONSHIPS_RELATIONSHIP PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02010635 labels:v2.1.0
CREATE INDEX relationship_citizen_idx ON relationships_relationship(dominator_id, submitter_id);

-- changeset Stanley:02010636 labels:v2.1.0
CREATE INDEX relationship_state_idx ON relationships_relationship(status_id);

-- changeset Stanley:02010637 labels:v2.1.0
CREATE INDEX relationship_submitter_idx ON relationships_relationship(submitter_id);

-- changeset Stanley:02010638 labels:v2.1.0
ALTER TABLE relationships_relationship ADD CONSTRAINT relationship_dominator FOREIGN KEY (dominator_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010639 labels:v2.1.0
ALTER TABLE relationships_relationship ADD CONSTRAINT relationship_state FOREIGN KEY (status_id) REFERENCES relationships_state (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010640 labels:v2.1.0
ALTER TABLE relationships_relationship ADD CONSTRAINT relationship_submitter FOREIGN KEY (submitter_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;
