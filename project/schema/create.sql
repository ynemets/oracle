/*==============================================================*/
/* Table: Competition                                         */
/*==============================================================*/
CREATE TABLE Competition  (
   id_compet          INTEGER                         NOT NULL,
   place              CHAR(256),
   stadium            CHAR(256),
   data_time          DATE,
   other              CLOB,
   CONSTRAINT PK_COMPETITION PRIMARY KEY (id_compet)
);

/*==============================================================*/
/* Table: financing                                           */
/*==============================================================*/
CREATE TABLE financing  (
   id_compet          INTEGER                         NOT NULL,
   id_fin             INTEGER                         NOT NULL,
   CONSTRAINT PK_FINANCING PRIMARY KEY (id_compet, id_fin)
);

/*==============================================================*/
/* Index: financing_FK                                        */
/*==============================================================*/
CREATE INDEX financing_FK ON financing (
   id_compet ASC
);

/*==============================================================*/
/* Index: financing2_FK                                       */
/*==============================================================*/
CREATE INDEX financing2_FK ON financing (
   id_fin ASC
);

/*==============================================================*/
/* Table: footballer                                          */
/*==============================================================*/
CREATE TABLE footballer  (
   id_footballer      INTEGER                         NOT NULL,
   id_team            INTEGER,
   namel               CHAR(256),
   date_of_birth      DATE,
   status             CHAR(256),
   other              CLOB,
   CONSTRAINT PK_FOOTBALLER PRIMARY KEY (id_footballer)
);

/*==============================================================*/
/* Index: conn_team_FK                                        */
/*==============================================================*/
CREATE INDEX conn_team_FK ON footballer (
   id_team ASC
);

/*==============================================================*/
/* Table: funding                                             */
/*==============================================================*/
CREATE TABLE funding  (
   id_fin             INTEGER                         NOT NULL,
   namel_spons         CHAR(256),
   rating             INTEGER,
   other              CLOB,
   CONSTRAINT PK_FUNDING PRIMARY KEY (id_fin)
);

/*==============================================================*/
/* Table: judge                                               */
/*==============================================================*/
CREATE TABLE judge  (
   id_judge           INTEGER                         NOT NULL,
   namel               CHAR(256),
   expierence         INTEGER,
   category           CHAR(256),
   other              CLOB,
   CONSTRAINT PK_JUDGE PRIMARY KEY (id_judge)
);

/*==============================================================*/
/* Table: judging                                             */
/*==============================================================*/
CREATE TABLE judging  (
   id_compet          INTEGER                         NOT NULL,
   id_judge           INTEGER                         NOT NULL,
   CONSTRAINT PK_JUDGING PRIMARY KEY (id_compet, id_judge)
);

/*==============================================================*/
/* Index: judging_FK                                          */
/*==============================================================*/
CREATE INDEX judging_FK ON judging (
   id_compet ASC
);

/*==============================================================*/
/* Index: judging2_FK                                         */
/*==============================================================*/
CREATE INDEX judging2_FK ON judging (
   id_judge ASC
);

/*==============================================================*/
/* Table: org_compet                                          */
/*==============================================================*/
CREATE TABLE org_compet  (
   id_org             INTEGER                         NOT NULL,
   id_compet          INTEGER                         NOT NULL,
   CONSTRAINT PK_ORG_COMPET PRIMARY KEY (id_org, id_compet)
);

/*==============================================================*/
/* Index: org_compet_FK                                       */
/*==============================================================*/
CREATE INDEX org_compet_FK ON org_compet (
   id_org ASC
);

/*==============================================================*/
/* Index: org_compet2_FK                                      */
/*==============================================================*/
CREATE INDEX org_compet2_FK ON org_compet (
   id_compet ASC
);

/*==============================================================*/
/* Table: organizer                                           */
/*==============================================================*/
CREATE TABLE organizer  (
   id_org             INTEGER                         NOT NULL,
   namel               CHAR(256),
   date_of_birth      DATE,
   sex                CHAR(256),
   home_phone         CHAR(256),
   work_phone         CHAR(256),
   other              CLOB,
   CONSTRAINT PK_ORGANIZER PRIMARY KEY (id_org)
);

/*==============================================================*/
/* Table: participation                                       */
/*==============================================================*/
CREATE TABLE participation  (
   id_team            INTEGER                         NOT NULL,
   id_compet          INTEGER                         NOT NULL,
   CONSTRAINT PK_PARTICIPATION PRIMARY KEY (id_team, id_compet)
);

/*==============================================================*/
/* Index: participation_FK                                    */
/*==============================================================*/
CREATE INDEX participation_FK ON participation (
   id_team ASC
);

/*==============================================================*/
/* Index: participation2_FK                                   */
/*==============================================================*/
CREATE INDEX participation2_FK ON participation (
   id_compet ASC
);

/*==============================================================*/
/* Table: partip_rating                                       */
/*==============================================================*/
CREATE TABLE partip_rating  (
   id_teamInRating    INTEGER                         NOT NULL,
   id_team            INTEGER                         NOT NULL,
   CONSTRAINT PK_PARTIP_RATING PRIMARY KEY (id_teamInRating, id_team)
);

/*==============================================================*/
/* Index: partip_rating_FK                                    */
/*==============================================================*/
CREATE INDEX partip_rating_FK ON partip_rating (
   id_teamInRating ASC
);

/*==============================================================*/
/* Index: partip_rating2_FK                                   */
/*==============================================================*/
CREATE INDEX partip_rating2_FK ON partip_rating (
   id_team ASC
);

/*==============================================================*/
/* Table: place_int_rating                                    */
/*==============================================================*/
CREATE TABLE place_int_rating  (
   id_teamInRating    INTEGER                         NOT NULL,
   id_rat             INTEGER                         NOT NULL,
   place              INTEGER,
   CONSTRAINT PK_PLACE_INT_RATING PRIMARY KEY (id_teamInRating)
);

/*==============================================================*/
/* Index: part_by_vers_FK                                     */
/*==============================================================*/
CREATE INDEX part_by_vers_FK ON place_int_rating (
   id_rat ASC
);

/*==============================================================*/
/* Table: team                                                */
/*==============================================================*/
CREATE TABLE team  (
   id_team            INTEGER                         NOT NULL,
   reg_as             CHAR(256),
   coach_namel         CHAR(256),
   other              CLOB,
   CONSTRAINT PK_TEAM PRIMARY KEY (id_team)
);

/*==============================================================*/
/* Table: team_c                                              */
/*==============================================================*/
CREATE TABLE team_c  (
   id_team            INTEGER                         NOT NULL,
   id_countryTeam     INTEGER                         NOT NULL,
   reg_as             CHAR(256),
   coach_namel         CHAR(256),
   other              CLOB,
   country            CHAR(255),
   CONSTRAINT PK_TEAM_C PRIMARY KEY (id_team, id_countryTeam)
);

/*==============================================================*/
/* Index: team_c_v_FK                                         */
/*==============================================================*/
CREATE INDEX team_c_v_FK ON team_c (
   id_team ASC
);

/*==============================================================*/
/* Table: team_club                                           */
/*==============================================================*/
CREATE TABLE team_club  (
   id_team            INTEGER                         NOT NULL,
   id_club            INTEGER                         NOT NULL,
   reg_as             CHAR(256),
   coach_namel         CHAR(256),
   other              CLOB,
   num_diviz_team     INTEGER,
   owner_namel         CHAR(256),
   club_namel          CHAR(10),
   CONSTRAINT PK_TEAM_CLUB PRIMARY KEY (id_team, id_club)
);

/*==============================================================*/
/* Index: team_cl_FK                                          */
/*==============================================================*/
CREATE INDEX team_cl_FK ON team_club (
   id_team ASC
);

/*==============================================================*/
/* Table: version_rating                                      */
/*==============================================================*/
CREATE TABLE version_rating  (
   id_rat             INTEGER                         NOT NULL,
   number_team        INTEGER,
   other              CLOB,
   CONSTRAINT PK_VERSION_RATING PRIMARY KEY (id_rat)
);