-- liquibase formatted sql

-- changeset Stanley:02010401 labels:v2.1.0
CREATE TABLE elections_election (id INT NOT NULL, start datetime DEFAULT NOW() NOT NULL, end datetime NULL, active BIT(1) DEFAULT 0 NOT NULL, CONSTRAINT PK_ELECTIONS_ELECTION PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02010402 labels:v2.1.0
CREATE TABLE assemblies_assembly (id INT NOT NULL, start datetime DEFAULT NOW() NOT NULL, end datetime NULL, active BIT(1) DEFAULT 0 NOT NULL, CONSTRAINT PK_ASSEMBLIES_ASSEMBLY PRIMARY KEY (id), UNIQUE (id));
