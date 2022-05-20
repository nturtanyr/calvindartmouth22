-- liquibase formatted sql

-- changeset Stanley:02010701 labels:v2.1.0
CREATE TABLE parties_party (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(256) NOT NULL, party_color VARCHAR(45) NULL, short_name VARCHAR(16) NULL, CONSTRAINT PK_PARTIES_PARTY PRIMARY KEY (id), UNIQUE (id), UNIQUE (name), UNIQUE (party_color), UNIQUE (short_name));

-- changeset Stanley:02010702 labels:v2.1.0
CREATE TABLE parties_policy_map (party_id INT NOT NULL, foa_value INT NOT NULL, policy_id INT NOT NULL, preference INT DEFAULT 0 NOT NULL, CONSTRAINT PK_PARTIES_POLICY_MAP PRIMARY KEY (party_id, policy_id));

-- changeset Stanley:02010703 labels:v2.1.0
CREATE INDEX party_map_policy ON parties_policy_map(policy_id);

-- changeset Stanley:02010704 labels:v2.1.0
ALTER TABLE parties_policy_map ADD CONSTRAINT party_map_policy FOREIGN KEY (policy_id) REFERENCES policies_policy (id) ON UPDATE RESTRICT ON DELETE CASCADE;

-- changeset Stanley:02010705 labels:v2.1.0
ALTER TABLE parties_policy_map ADD CONSTRAINT policy_map_party FOREIGN KEY (party_id) REFERENCES parties_party (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010706 labels:v2.1.0
CREATE TABLE parties_sympathies (party_id INT NOT NULL, citizen_attribute VARCHAR(64) NOT NULL, attribute_value INT NOT NULL);
