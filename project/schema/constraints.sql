ALTER TABLE financing
   ADD CONSTRAINT FK_FINANCIN_FINANCING_COMPETIT FOREIGN KEY (id_compet)
      REFERENCES Competition (id_compet);

ALTER TABLE financing
   ADD CONSTRAINT FK_FINANCIN_FINANCING_FUNDING FOREIGN KEY (id_fin)
      REFERENCES funding (id_fin);

ALTER TABLE footballer
   ADD CONSTRAINT FK_FOOTBALL_CONN_TEAM_TEAM FOREIGN KEY (id_team)
      REFERENCES team (id_team);

ALTER TABLE judging
   ADD CONSTRAINT FK_JUDGING_JUDGING_COMPETIT FOREIGN KEY (id_compet)
      REFERENCES Competition (id_compet);

ALTER TABLE judging
   ADD CONSTRAINT FK_JUDGING_JUDGING2_JUDGE FOREIGN KEY (id_judge)
      REFERENCES judge (id_judge);

ALTER TABLE org_compet
   ADD CONSTRAINT FK_ORG_COMP_ORG_COMPE_ORGANIZE FOREIGN KEY (id_org)
      REFERENCES organizer (id_org);

ALTER TABLE org_compet
   ADD CONSTRAINT FK_ORG_COMP_ORG_COMPE_COMPETIT FOREIGN KEY (id_compet)
      REFERENCES Competition (id_compet);

ALTER TABLE participation
   ADD CONSTRAINT FK_PARTICIP_PARTICIPA_TEAM FOREIGN KEY (id_team)
      REFERENCES team (id_team);

ALTER TABLE participation
   ADD CONSTRAINT FK_PARTICIP_PARTICIPA_COMPETIT FOREIGN KEY (id_compet)
      REFERENCES Competition (id_compet);

ALTER TABLE partip_rating
   ADD CONSTRAINT FK_PARTIP_R_PARTIP_RA_PLACE_IN FOREIGN KEY (id_teamInRating)
      REFERENCES place_int_rating (id_teamInRating);

ALTER TABLE partip_rating
   ADD CONSTRAINT FK_PARTIP_R_PARTIP_RA_TEAM FOREIGN KEY (id_team)
      REFERENCES team (id_team);

ALTER TABLE place_int_rating
   ADD CONSTRAINT FK_PLACE_IN_PART_BY_V_VERSION_ FOREIGN KEY (id_rat)
      REFERENCES version_rating (id_rat);

ALTER TABLE team_c
   ADD CONSTRAINT FK_TEAM_C_TEAM_C_V_TEAM FOREIGN KEY (id_team)
      REFERENCES team (id_team);

ALTER TABLE team_club
   ADD CONSTRAINT FK_TEAM_CLU_TEAM_CL_TEAM FOREIGN KEY (id_team)
      REFERENCES team (id_team);