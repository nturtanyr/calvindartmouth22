
-- changeset Stanley:02011201 labels:v2.1.0
CREATE VIEW votes_totals AS select `ec`.`election_id` AS `election_id`,`ec`.`candidate_id` AS `candidate_id`,ifnull(`ec`.`vote_tally`,0) AS `inperson_votes`,ifnull(`uv`.`vote_tally`,0) AS `online_votes`,(ifnull(`ec`.`vote_tally`,0) + ifnull(`uv`.`vote_tally`,0)) AS `total_votes` from (`kalmany`.`elections_candidates` `ec` left join (select `kalmany`.`users_vote`.`election_id` AS `election_id`,`kalmany`.`users_vote`.`candidate_id` AS `candidate_id`,count(0) AS `vote_tally` from `kalmany`.`users_vote` group by `kalmany`.`users_vote`.`election_id`,`kalmany`.`users_vote`.`candidate_id`) `uv` on(((`ec`.`election_id` = `uv`.`election_id`) and (`ec`.`candidate_id` = `uv`.`candidate_id`))));

