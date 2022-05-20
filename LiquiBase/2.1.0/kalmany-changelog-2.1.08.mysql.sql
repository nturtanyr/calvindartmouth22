-- liquibase formatted sql

-- changeset Stanley:02010801 labels:v2.1.0
CREATE TABLE candidates_candidate (id INT AUTO_INCREMENT NOT NULL, citizen_id INT NOT NULL, constituency_id INT NOT NULL, party_id INT NOT NULL, running BIT(1) DEFAULT 1 NULL, quote VARCHAR(128) NULL, loyalty INT NOT NULL, tenacity INT NOT NULL, fear_of_bears INT NOT NULL, baldness INT NOT NULL, charisma INT NOT NULL, socks INT NOT NULL, trustworthiness DECIMAL(5, 2) DEFAULT 0 NULL, CONSTRAINT PK_CANDIDATES_CANDIDATE PRIMARY KEY (id));

-- changeset Stanley:02010802 labels:v2.1.0
CREATE INDEX candidate_citizen_idx ON candidates_candidate(citizen_id);

-- changeset Stanley:02010803 labels:v2.1.0
CREATE INDEX candidate_constituency_idx ON candidates_candidate(constituency_id);

-- changeset Stanley:02010804 labels:v2.1.0
CREATE INDEX candidate_party_idx ON candidates_candidate(party_id);

-- changeset Stanley:02010805 labels:v2.1.0
ALTER TABLE candidates_candidate ADD CONSTRAINT candidate_citizen FOREIGN KEY (citizen_id) REFERENCES citizens_citizen (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010806 labels:v2.1.0
ALTER TABLE candidates_candidate ADD CONSTRAINT candidate_constituency FOREIGN KEY (constituency_id) REFERENCES constituencies_constituency (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010807 labels:v2.1.0
ALTER TABLE candidates_candidate ADD CONSTRAINT candidate_party FOREIGN KEY (party_id) REFERENCES parties_party (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010808 labels:v2.1.0
CREATE TABLE candidates_policy_map (candidate_id INT NOT NULL, policy_id INT NOT NULL, foa_value INT NOT NULL, preference INT DEFAULT 0 NOT NULL, CONSTRAINT PK_CANDIDATES_POLICY_MAP PRIMARY KEY (candidate_id, policy_id));

-- changeset Stanley:02010809 labels:v2.1.0
CREATE INDEX candidate_map_policy ON candidates_policy_map(policy_id);

-- changeset Stanley:02010810 labels:v2.1.0
ALTER TABLE candidates_policy_map ADD CONSTRAINT candidate_map_policy FOREIGN KEY (policy_id) REFERENCES policies_policy (id) ON UPDATE RESTRICT ON DELETE CASCADE;

-- changeset Stanley:02010811 labels:v2.1.0
ALTER TABLE candidates_policy_map ADD CONSTRAINT policy_map_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;
