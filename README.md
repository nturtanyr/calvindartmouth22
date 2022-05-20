# Kalmany Register
Managing database in Kalmany

## Structure

Structure is versioned - from 1.0.0, each structure change is built upon the last.
Major changes mean changes that are incompatible with the rest of the code-base. A major update in the Register will require a major update in all code bases.
Minor changes are changes to the schema that cause changes in the data. If no change is required in Inquisitor or Operator, then it is a minor change.
Patch changes are often only data updates.

## Data

Dat is split into four types:
- **RootData**: The core values of the database that are not manipulated by Operator in any way
- **SecondaryData**: Data that contains values that are manipulated by Operator, but cannot be generated by Operator
- **TertiaryData**: Data that is entirely generated by Operator
- **ExternalData**: Data that is manipulated by the Aquarium.
- **RoutineData**: Named by MySQL - refers to views

RootData is versioned to follow Structure.

All other data can only be restored by backups, and therefore is versioned, but this only refers to the version it is compatible with. This will not be committed.

Naming convention for schema is:
`schema_<majorversion>.<minorversion>.<patchversion>.sql`

Naming convention for RootData is:
`<priority>_kalmany_<table_class>_<table>_<majorversion>.<minorversion>.<patchversion>.sql`

Priority dictates when the script is run to ensure that data that has foreign keys has the data available.

Naming convention for other data:
`<priority>_kalmany_<table_class>_<table>_<majorversion>.<minorversion>.<patchversion>_<datestring>.sql`

## Deploying updates

If given a database that is versioned, to deploy the updates required means applying each script of the versions between the current version and the endpoint version:
- schema_<newversion>.sql ->
- RootData/*_<newversion>.sql ->
- RoutineData/*_<newversion>.sql ->

Data may need be updated with the new schema, either for updating values that are default after creation, or including new data. These are applied on top of already present data, therefore comes with the Data sql files that are uncomitted. Upgrades to the data should be indicated by:
`<priority>u_kalmany_<table_class>_<table>_<majorversion>.<minorversion>.<patchversion>_<datestring>.sql`
i.e. the priority numbed is given the facet 'u' to indicate it is an update upon the prior priority.

## Deploying new

This can be achieved by simply deploying a full backup of the production DB at that version. If necessary, one can run through all schema updates.

## Version Record
1.0.0 - Initial creation:
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

1.1.0 - Addition of relationship code, refined sexuality and gender, updates to industry and government sectors
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