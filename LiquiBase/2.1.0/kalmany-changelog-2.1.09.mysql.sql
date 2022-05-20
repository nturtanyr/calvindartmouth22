-- liquibase formatted sql

-- changeset Stanley:02010901 labels:v2.1.0
CREATE TABLE elections_candidates (election_id INT NOT NULL, candidate_id INT NOT NULL, vote_tally INT DEFAULT 0 NULL, CONSTRAINT PK_ELECTIONS_CANDIDATES PRIMARY KEY (election_id, candidate_id));

-- changeset Stanley:02010902 labels:v2.1.0
ALTER TABLE elections_candidates ADD CONSTRAINT UC_Election_Candidate UNIQUE (election_id, candidate_id);

-- changeset Stanley:02010903 labels:v2.1.0
CREATE INDEX election_candidate_idx ON elections_candidates(candidate_id);

-- changeset Stanley:02010904 labels:v2.1.0
ALTER TABLE elections_candidates ADD CONSTRAINT election_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010905 labels:v2.1.0
ALTER TABLE elections_candidates ADD CONSTRAINT election_id FOREIGN KEY (election_id) REFERENCES elections_election (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010906 labels:v2.1.0
CREATE TABLE users_vote (election_id INT NOT NULL, user_id VARCHAR(64) NOT NULL, candidate_id INT NOT NULL, CONSTRAINT PK_USERS_VOTE PRIMARY KEY (election_id, user_id, candidate_id));

-- changeset Stanley:02010907 labels:v2.1.0
CREATE INDEX uvote_candidate_idx ON users_vote(candidate_id);

-- changeset Stanley:02010908 labels:v2.1.0
CREATE INDEX vote_election_idx ON users_vote(election_id);

-- changeset Stanley:02010911 labels:v2.1.0
ALTER TABLE users_vote ADD CONSTRAINT uvote_candidate FOREIGN KEY (candidate_id) REFERENCES candidates_candidate (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset Stanley:02010912 labels:v2.1.0
ALTER TABLE users_vote ADD CONSTRAINT uvote_election FOREIGN KEY (election_id) REFERENCES elections_election (id) ON UPDATE RESTRICT ON DELETE RESTRICT;
