-- liquibase formatted sql

-- changeset Stanley:02011101 labels:v2.1.0
CREATE TABLE constituencies_rating (constituency_id INT NOT NULL, category_id INT NOT NULL, rating DECIMAL(8, 2) DEFAULT 0 NOT NULL, assembly_id INT NOT NULL, income DECIMAL(11, 2) DEFAULT 0 NOT NULL, expenditure DECIMAL(11, 2) DEFAULT 0 NOT NULL, CONSTRAINT PK_CONSTITUENCIES_RATING PRIMARY KEY (constituency_id, category_id, assembly_id));

-- changeset Stanley:02011102 labels:v2.1.0
CREATE INDEX assembly_id_idx ON constituencies_rating(assembly_id);

-- changeset Stanley:02011103 labels:v2.1.0
CREATE INDEX category_id ON constituencies_rating(category_id);

-- changeset Stanley:02011104 labels:v2.1.0
CREATE INDEX constituency_id_idx ON constituencies_rating(constituency_id);

-- changeset Stanley:02011105 labels:v2.1.0
CREATE INDEX parent_itself_idx ON assemblies_news_feed(parent_id);

-- changeset Stanley:02011106 labels:v2.1.0
ALTER TABLE constituencies_rating ADD CONSTRAINT assembly_id FOREIGN KEY (assembly_id) REFERENCES assemblies_assembly (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011107 labels:v2.1.0
ALTER TABLE constituencies_rating ADD CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES policies_category (id) ON UPDATE RESTRICT ON DELETE CASCADE;

-- changeset Stanley:02011108 labels:v2.1.0
ALTER TABLE constituencies_rating ADD CONSTRAINT constituency_id FOREIGN KEY (constituency_id) REFERENCES constituencies_constituency (id) ON UPDATE RESTRICT ON DELETE RESTRICT;