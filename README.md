# Kalmany Register
Managing database in Kalmany

## Structure

Structure is versioned - from 1.0.0, each structure change is built upon the last.
Major changes mean changes that are incompatible with the rest of the code-base. A major update in the Register will require a major update in all code bases.
Minor changes are changes to the schema that cause changes in the data. If no change is required in Inquisitor or Operator, then it is a minor change.
Patch changes are often only data updates.

## Liquibase

Data and schema updates are managed using liquibase. The structure is as follows:
- Each version is given its specific json file to refer to a folder and add a tag in the database
- In each folder, patch versions are used to group together like-changesets eg. those affecting the same table
- Each changeset is organise to operate on one table at a time and process all changes with that table. Changest ID convention is #MajorVersion#MinorVersion#PatchVersion#ScriptNumber

## Deploying updates

Deploying an update should be as simple as processing the command:
& "C:\Program Files\liquibase\liquibase.bat" update --labels="v\<Version\>"

## Version Record
2.0.0 - Initial creation:
- assemblies_assembly (Managing assembly objects)
- assemblies_member (Managing members of each assembly and results of an assembly)
- assemblies_news_feed (Managing the 'updates' feed for each assembly)
- assemblies_vote (Managing the votes given by each member of assembly)
- candidates_candidate (Managing candidate objects)
- candidates_policy_map (Managing mapping of a candidate to the policies they stand for)
- citizens_agegroups (Managing AgeGroup identities)
- citizens_citizen (Managing citizen objects)
- citizens_ethnicity (Managing Ethnicity identities)
- citizens_eye_color (Managing EyeColor identities)
- citizens_industry (Managing Industry identities)
- citizens_religion (Managing Religion identities)
- citizens_sex (Managing Sex identities)
- citizens_sexuality (Managing Sexuality identities)
- citizens_zodiac (Managing Zodiac identities)
- constituencies_constituency (Managing constituency objects)
- constituencies_costs (Managing the costs associated with constituency variables)
- constituencies_rating (Managing the ratings associate with each government sector in a constituency)
- constituencies_spending (Managing the spending that each constituency accumulates)
- elections_candidates (Managing the candidates involved in an election)
- elections_election (Managing election objects)
- general_news_editor (Record of all editorial news articles)
- general_news_feed (Record of all news feed messages to display in tickertape)
- general_news_main (Record of all main news articles)
- general_news_minor (Record of all minor news articles)
- parties_party (Managing party objects)
- parties_policy_map (Managing mapping of a party to the policies they stand for)
- parties_sympathies (Managing the demographics a part is aligned to)
- policies_category (Managing government sector identities)
- policies_policy (Managing policy objects)
- policies_preferences (Managing mapping of the affinity for each policy to a demography)
- users_vote (Managing votes coming from external users)

2.1.0 - Addition of relationship code, refined sexuality and gender, updates to industry and government sectors
- citizens_bio_attraction_map (Managing mapping of sexes to citizens for biological attraction)
- citizens_gender (Managing Gender identities)
- citizens_personality (Managing Personality indentities)
- citizens_personality_map (Managing mapping of citizen to their personality attributes)
- citizens_redflag_map (Managing mapping of citizen to red-flag personality traits)
- citizens_state (Managing CitizenState identities)
- citizens_status (Managing a citizen's status object)
- relationships_relationship (Managing relationship objects)
- relationships_state (Managing RelationshipState identities)
- Removed citizens_eye_color (unused)

2.2.0 - Addition of further relationship code and tables to allow for relationship creation and management, and family records, and monuments to promote constituency individuality
- monuments_monument (A list of monuments and descriptions that exist in Kalmany)
- general_clock (The master record of days that have passed in Kalmany to provide a consistent lock to a date)
- citizens_family_map (The mapping of family trees by giving a citizen a mother and a father)