-- liquibase formatted sql

-- changeset Stanley:02011001 labels:v2.1.0
CREATE TABLE assemblies_member (assembly_id INT NOT NULL, candidate_id INT NOT NULL, policy_id INT DEFAULT 0 NOT NULL, foa_value INT DEFAULT 0 NOT NULL, vote_result INT DEFAULT 0 NOT NULL, constituency_id INT DEFAULT 1 NOT NULL, CONSTRAINT PK_ASSEMBLIES_MEMBER PRIMARY KEY (assembly_id, candidate_id));

-- changeset Stanley:02011002 labels:v2.1.0
ALTER TABLE assemblies_member ADD CONSTRAINT UC_Assembly_Candidate UNIQUE (assembly_id, candidate_id);

-- changeset Stanley:02011003 labels:v2.1.0
CREATE INDEX member_candidate_idx ON assemblies_member(candidate_id);

-- changeset Stanley:02011004 labels:v2.1.0
CREATE INDEX member_constituency_idx ON assemblies_member(constituency_id);

-- changeset Stanley:02011005 labels:v2.1.0
CREATE INDEX member_policy_idx ON assemblies_member(policy_id);

-- changeset Stanley:02011006 labels:v2.1.0
ALTER TABLE assemblies_member ADD CONSTRAINT member_assembly FOREIGN KEY (assembly_id) REFERENCES assemblies_assembly (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011007 labels:v2.1.0
ALTER TABLE assemblies_member ADD CONSTRAINT member_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011008 labels:v2.1.0
ALTER TABLE assemblies_member ADD CONSTRAINT member_constituency FOREIGN KEY (constituency_id) REFERENCES constituencies_constituency (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011009 labels:v2.1.0
ALTER TABLE assemblies_member ADD CONSTRAINT member_policy FOREIGN KEY (policy_id) REFERENCES policies_policy (id) ON UPDATE RESTRICT ON DELETE CASCADE;

-- changeset Stanley:02011010 labels:v2.1.0
CREATE TABLE assemblies_news_feed (id INT AUTO_INCREMENT NOT NULL, time_id datetime DEFAULT NOW() NOT NULL, candidate_id INT NULL, parent_id INT NULL, message VARCHAR(128) NOT NULL, assembly_id INT NOT NULL, style VARCHAR(64) NULL, CONSTRAINT PK_ASSEMBLIES_NEWS_FEED PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02011011 labels:v2.1.0
CREATE INDEX feed_candidate_idx ON assemblies_news_feed(candidate_id);

-- changeset Stanley:02011012 labels:v2.1.0
CREATE INDEX assembly_id_idx ON assemblies_news_feed(assembly_id);

-- changeset Stanley:02011013 labels:v2.1.0
ALTER TABLE assemblies_news_feed ADD CONSTRAINT assembly_assembly FOREIGN KEY (assembly_id) REFERENCES assemblies_assembly (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011014 labels:v2.1.0
ALTER TABLE assemblies_news_feed ADD CONSTRAINT feed_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011015 labels:v2.1.0
ALTER TABLE assemblies_news_feed ADD CONSTRAINT parent_itself FOREIGN KEY (parent_id) REFERENCES assemblies_news_feed (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011016 labels:v2.1.0
CREATE TABLE assemblies_vote (assembly_id INT NOT NULL, candidate_id INT NOT NULL, policy_id INT NOT NULL, foa_value INT NOT NULL, vote INT DEFAULT 0 NOT NULL, preference INT DEFAULT 0 NOT NULL, CONSTRAINT PK_ASSEMBLIES_VOTE PRIMARY KEY (assembly_id, candidate_id, policy_id, foa_value));

-- changeset Stanley:02011017 labels:v2.1.0
CREATE INDEX vote_candidate_idx ON assemblies_vote(candidate_id);

-- changeset Stanley:02011018 labels:v2.1.0
CREATE INDEX vote_policy_idx ON assemblies_vote(policy_id);

-- changeset Stanley:02011019 labels:v2.1.0
ALTER TABLE assemblies_vote ADD CONSTRAINT UC_Assembly_Candidate_Policy UNIQUE (assembly_id, candidate_id, policy_id, foa_value);

-- changeset Stanley:02011020 labels:v2.1.0
ALTER TABLE assemblies_vote ADD CONSTRAINT vote_assembly FOREIGN KEY (assembly_id) REFERENCES assemblies_assembly (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011021 labels:v2.1.0
ALTER TABLE assemblies_vote ADD CONSTRAINT vote_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02011022 labels:v2.1.0
ALTER TABLE assemblies_vote ADD CONSTRAINT vote_policy FOREIGN KEY (policy_id) REFERENCES policies_policy (id) ON UPDATE RESTRICT ON DELETE CASCADE;
