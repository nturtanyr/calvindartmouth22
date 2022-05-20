-- liquibase formatted sql

-- changeset Stanley:02010201 labels:v2.1.0
CREATE TABLE citizens_agegroups (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(45) NOT NULL, CONSTRAINT PK_CITIZENS_AGEGROUPS PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010202 labels:v2.1.0
INSERT INTO citizens_agegroups (id, name) VALUES (2, 'adult');
INSERT INTO citizens_agegroups (id, name) VALUES (3, 'middle-aged');
INSERT INTO citizens_agegroups (id, name) VALUES (4, 'senior');
INSERT INTO citizens_agegroups (id, name) VALUES (1, 'youth');

-- changeset Stanley:02010204 labels:v2.1.0
CREATE TABLE citizens_ethnicity (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NOT NULL, CONSTRAINT PK_CITIZENS_ETHNICITY PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010205 labels:v2.1.0
INSERT INTO citizens_ethnicity (id, name) VALUES (7, 'android');
INSERT INTO citizens_ethnicity (id, name) VALUES (1, 'human');
INSERT INTO citizens_ethnicity (id, name) VALUES (2, 'lizard person');
INSERT INTO citizens_ethnicity (id, name) VALUES (5, 'six fingers');
INSERT INTO citizens_ethnicity (id, name) VALUES (4, 'third nipple');
INSERT INTO citizens_ethnicity (id, name) VALUES (6, 'vampire');
INSERT INTO citizens_ethnicity (id, name) VALUES (3, 'zombie');

-- changeset Stanley:02010206 labels:v2.1.0
CREATE TABLE citizens_gender (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(16) NULL, CONSTRAINT PK_CITIZENS_GENDER PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010207 labels:v2.1.0
INSERT INTO citizens_gender (id, name) VALUES (3, 'agender');
INSERT INTO citizens_gender (id, name) VALUES (4, 'bigender');
INSERT INTO citizens_gender (id, name) VALUES (9, 'demifemale');
INSERT INTO citizens_gender (id, name) VALUES (5, 'demimale');
INSERT INTO citizens_gender (id, name) VALUES (1, 'female');
INSERT INTO citizens_gender (id, name) VALUES (7, 'genderfluid');
INSERT INTO citizens_gender (id, name) VALUES (2, 'male');
INSERT INTO citizens_gender (id, name) VALUES (6, 'pangender');
INSERT INTO citizens_gender (id, name) VALUES (8, 'xenogender');

-- changeset Stanley:02010208 labels:v2.1.0
CREATE TABLE citizens_industry (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NOT NULL, earnings INT NULL, category_id INT NULL, nationalised BIT(1) DEFAULT 1 NULL, CONSTRAINT PK_CITIZENS_INDUSTRY PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010209 labels:v2.1.0
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (1, 'agriculture', 7, 12, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (2, 'mining', 37, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (3, 'manufacturing', 33, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (4, 'electricity', 59, 10, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (5, 'waterworks', 60, 10, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (6, 'construction', 54, 6, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (7, 'retail', 20, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (8, 'transport', 57, 6, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (9, 'accomodation', 15, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (10, 'communication', 70, 10, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (11, 'financial', 59, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (12, 'scientific research', 56, 4, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (13, 'administration', 25, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (14, 'government', 18, 9, 1);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (15, 'education', 41, 4, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (16, 'healthcare', 30, 2, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (17, 'real estate', 52, 10, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (18, 'arts and entertainment', 29, 11, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (19, 'recreation', 30, 11, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (21, 'unemployed', 9, 1, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (22, 'student', 22, 4, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (23, 'servile', 13, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (24, 'retired', 34, 1, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (25, 'food services', 15, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (26, 'legal services', 20, 7, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (27, 'media', 28, 11, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (28, 'military', 20, 5, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (29, 'motor services', 20, 8, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (30, 'rescue', 20, 7, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (31, 'sanitation', 20, 12, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (32, 'security', 20, 7, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (33, 'sports', 29, 11, 0);
INSERT INTO citizens_industry (id, name, earnings, category_id, nationalised) VALUES (34, 'technology', 67, 8, 0);

-- changeset Stanley:02010210 labels:v2.1.0
CREATE TABLE citizens_personality (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NULL, gender VARCHAR(16) NULL, parity BIT(1) NULL, CONSTRAINT PK_CITIZENS_PERSONALITY PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010211 labels:v2.1.0
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (1, 'Authoritative', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (2, 'Confident', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (3, 'Brave', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (4, 'Determined', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (5, 'Protective', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (6, 'Handsome', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (7, 'Easy', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (8, 'Ambitious', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (9, 'Athletic', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (10, 'Tough', 'masculine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (11, 'Aggressive', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (12, 'Boastful', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (13, 'Dominant', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (14, 'Logical', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (15, 'Ambivalent', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (16, 'Rebellious', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (17, 'Compulsive', 'masculine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (18, 'Sensitive', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (19, 'Humble', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (20, 'Compassionate', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (21, 'Social', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (22, 'Empathetic', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (23, 'Graceful', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (24, 'Careful', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (25, 'Tidy', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (26, 'Beautiful', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (27, 'Cute', 'feminine', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (28, 'Shy', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (29, 'Insecure', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (30, 'Passive', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (31, 'Obsessive', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (32, 'Indecisive', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (33, 'Superficial', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (34, 'Fragile', 'feminine', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (35, 'Creative', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (36, 'Tactile', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (37, 'Curious', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (38, 'Quirky', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (39, 'Principled', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (40, 'Slim', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (41, 'Clumsy', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (42, 'Organised', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (43, 'Fair', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (44, 'Curvy', 'neutral', 1);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (45, 'Untrustworthy', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (46, 'Lazy', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (47, 'Jealous', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (48, 'Dismissive', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (49, 'Careless', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (50, 'Vain', 'neutral', 0);
INSERT INTO citizens_personality (id, name, gender, parity) VALUES (51, 'Cowardly', 'neutral', 0);

-- changeset Stanley:02010212 labels:v2.1.0
CREATE TABLE citizens_religion (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NOT NULL, `description` VARCHAR(512) NULL, CONSTRAINT PK_CITIZENS_RELIGION PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010213 labels:v2.1.0
INSERT INTO citizens_religion (id, name, `description`) VALUES (1, 'the greater bovine', 'Belief in the greater beings, more specifically the Greater Bovine, a being representative of all cows.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (2, 'hewey dewey', 'A religion started by the greatest capitalist of our generation: Hewey L Dewey.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (3, 'folklore', 'Belief in the old stories of magical beings and rituals. Comparable to druids!');
INSERT INTO citizens_religion (id, name, `description`) VALUES (4, 'the sun god that isn''t ra', 'Belief in the great god of the sun that totally isn''t named Ra or anything.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (5, 'beddism', 'The peaceful beliefs of those who think that the trobules of the world can be solved by a long nap.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (6, 'chaotic neutral', 'A chaotic belief in doing reckless things in the interest of the people.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (7, 'inbetween-ism', 'A belief that is unsure of what there is out there.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (8, 'something', 'The great something. Something big is coming.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (9, 'cee kwel', 'The belief that life is run by a great simulation, and that we are not real.');
INSERT INTO citizens_religion (id, name, `description`) VALUES (10, 'none', 'Doesn''t believe there is any greater force, and we should do as we wish for our own benefit.');

-- changeset Stanley:02010214 labels:v2.1.0
CREATE TABLE citizens_sex (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NOT NULL, CONSTRAINT PK_CITIZENS_SEX PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010215 labels:v2.1.0
INSERT INTO citizens_sex (id, name) VALUES (2, 'female');
INSERT INTO citizens_sex (id, name) VALUES (1, 'male');
INSERT INTO citizens_sex (id, name) VALUES (3, 'superfemale');

-- changeset Stanley:02010216 labels:v2.1.0
CREATE TABLE citizens_sexuality (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NOT NULL, CONSTRAINT PK_CITIZENS_SEXUALITY PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010217 labels:v2.1.0
INSERT INTO citizens_sexuality (id, name) VALUES (4, 'asexual');
INSERT INTO citizens_sexuality (id, name) VALUES (3, 'bisexual');
INSERT INTO citizens_sexuality (id, name) VALUES (1, 'heterosexual');
INSERT INTO citizens_sexuality (id, name) VALUES (2, 'homosexual');
INSERT INTO citizens_sexuality (id, name) VALUES (6, 'pansexual');
INSERT INTO citizens_sexuality (id, name) VALUES (5, 'trisexual');
INSERT INTO citizens_sexuality (id, name) VALUES (7, 'unlabeled');

-- changeset Stanley:02010218 labels:v2.1.0
CREATE TABLE citizens_state (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(64) NOT NULL, CONSTRAINT PK_CITIZENS_STATE PRIMARY KEY (id), UNIQUE (id));

-- changeset Stanley:02010219 labels:v2.1.0
INSERT INTO citizens_state (id, name) VALUES (1, 'Sleeping');
INSERT INTO citizens_state (id, name) VALUES (2, 'Waking up');
INSERT INTO citizens_state (id, name) VALUES (3, 'Eating');
INSERT INTO citizens_state (id, name) VALUES (4, 'Travelling');
INSERT INTO citizens_state (id, name) VALUES (5, 'Working');
INSERT INTO citizens_state (id, name) VALUES (6, 'Studying');
INSERT INTO citizens_state (id, name) VALUES (7, 'Shopping');
INSERT INTO citizens_state (id, name) VALUES (8, 'Praying');
INSERT INTO citizens_state (id, name) VALUES (9, 'Doing crime');
INSERT INTO citizens_state (id, name) VALUES (10, 'Campaigning');
INSERT INTO citizens_state (id, name) VALUES (11, 'Snacking');
INSERT INTO citizens_state (id, name) VALUES (12, 'Meditating');
INSERT INTO citizens_state (id, name) VALUES (13, 'Resting');
INSERT INTO citizens_state (id, name) VALUES (14, 'Chilling');
INSERT INTO citizens_state (id, name) VALUES (15, 'Voting');
INSERT INTO citizens_state (id, name) VALUES (16, 'Eating out');
INSERT INTO citizens_state (id, name) VALUES (17, 'Exercising');
INSERT INTO citizens_state (id, name) VALUES (18, 'Socialising');
INSERT INTO citizens_state (id, name) VALUES (19, 'Hobbying');
INSERT INTO citizens_state (id, name) VALUES (20, 'Drinking');
INSERT INTO citizens_state (id, name) VALUES (21, 'Swimming');
INSERT INTO citizens_state (id, name) VALUES (22, 'Walking');
INSERT INTO citizens_state (id, name) VALUES (23, 'Dating');
INSERT INTO citizens_state (id, name) VALUES (24, 'Courting');
INSERT INTO citizens_state (id, name) VALUES (25, 'Fooling around');
INSERT INTO citizens_state (id, name) VALUES (26, 'Debating');
INSERT INTO citizens_state (id, name) VALUES (27, 'Being sick');
INSERT INTO citizens_state (id, name) VALUES (28, 'In danger');
INSERT INTO citizens_state (id, name) VALUES (29, 'Dead');

-- changeset Stanley:02010220 labels:v2.1.0
CREATE TABLE citizens_zodiac (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(32) NULL, CONSTRAINT PK_CITIZENS_ZODIAC PRIMARY KEY (id), UNIQUE (id), UNIQUE (name));

-- changeset Stanley:02010221 labels:v2.1.0
INSERT INTO citizens_zodiac (id, name) VALUES (9, 'Accordion');
INSERT INTO citizens_zodiac (id, name) VALUES (1, 'Archway');
INSERT INTO citizens_zodiac (id, name) VALUES (12, 'Boar');
INSERT INTO citizens_zodiac (id, name) VALUES (8, 'Chimney');
INSERT INTO citizens_zodiac (id, name) VALUES (5, 'Cockerel');
INSERT INTO citizens_zodiac (id, name) VALUES (11, 'Crashing Wave');
INSERT INTO citizens_zodiac (id, name) VALUES (6, 'Farmer');
INSERT INTO citizens_zodiac (id, name) VALUES (4, 'Fruit and Nut Tree');
INSERT INTO citizens_zodiac (id, name) VALUES (2, 'Heffer');
INSERT INTO citizens_zodiac (id, name) VALUES (3, 'Seahorse');
INSERT INTO citizens_zodiac (id, name) VALUES (10, 'Signpost');
INSERT INTO citizens_zodiac (id, name) VALUES (7, 'Wolf');