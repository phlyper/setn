/*==============================================================*/
/* Table : Anne_scolaires                                       */
/*==============================================================*/
create table Anne_scolaires
(
   id                   int not null,
   ecole_id            int not null,
   nom                  varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : Association_10                                       */
/*==============================================================*/
create table eleves_groupes
(
   id                   int not null,
   eleve_id            int not null,
   groupe_id           int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_11                                       */
/*==============================================================*/
create table eleves_remarks
(
   id                   int not null,
   remark_id           int not null,
   eleve_id            int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_14                                       */
/*==============================================================*/
create table matieres_professeurs
(
   id                   int not null,
   professeur_id       int not null,
   matiere_id          int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_21                                       */
/*==============================================================*/
create table classes_materiels
(
   id                   int not null,
   materiel_id         int not null,
   classe_id           int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_23                                       */
/*==============================================================*/
create table cours_groupes
(
   id                   int not null,
   cour_id             int not null,
   groupe_id           int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_26                                       */
/*==============================================================*/
create table cours_professeurs
(
   id                   int not null,
   professeur_id       int not null,
   cour_id             int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_30                                       */
/*==============================================================*/
create table classes_evenements
(
   id                   int not null,
   classe_id           int not null,
   evenement_id        int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_33                                       */
/*==============================================================*/
create table materiels_salles
(
   id                   int not null,
   materiel_id         int not null,
   salle_id            int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_36                                       */
/*==============================================================*/
create table evenements_professeurs
(
   id                   int not null,
   professeur_id       int not null,
   evenement_id        int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_37                                       */
/*==============================================================*/
create table clubs_eleves
(
   id                   int not null,
   eleve_id            int not null,
   club_id            int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_40                                       */
/*==============================================================*/
create table eleves_quizs
(
   id                   int not null,
   eleve_id            int not null,
   quiz_id              int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_42                                       */
/*==============================================================*/
create table eleves_levels
(
   id                   int not null,
   level_id           int not null,
   eleve_id            int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_48                                       */
/*==============================================================*/
create table classes_matieres
(
   id                   int not null,
   classe_id           int not null,
   matiere_id          int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_8                                        */
/*==============================================================*/
create table eleves_parents
(
   id                   int not null,
   eleve_id            int not null,
   parent_id           int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : Association_9                                        */
/*==============================================================*/
create table classes_professeurs
(
   id                   int not null,
   classe_id           int not null,
   professeur_id       int not null,
   primary key (id)
);

/*==============================================================*/
/* Table : quizs                                                 */
/*==============================================================*/
create table quizs
(
   id                   int not null,
   cour_id             int not null,
   question             varchar(254),
   reponces             varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : categories                                           */
/*==============================================================*/
create table categories
(
   id                   int not null,
   nom                  varchar(254),
   description          varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : classes                                              */
/*==============================================================*/
create table classes
(
   id                   int not null,
   ecole_id            int not null,
   level_id           int not null,
   label              int,
   max_students         int,
   logo                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : clubs                                               */
/*==============================================================*/
create table clubs
(
   id                   int not null,
   emloiyer_id          int not null,
   ecole_id            int not null,
   name                 int,
   speciality           int,
   logo                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : commantaires_cours                                   */
/*==============================================================*/
create table commantaires_cours
(
   id                   int not null,
   eleve_id            int not null,
   cour_id             int not null,
   contenue             int,
   primary key (id)
);

/*==============================================================*/
/* Table : consulter                                             */
/*==============================================================*/
create table consulters
(
   id                   int not null,
   cour_id             int not null,
   eleve_id            int not null,
   visite               datetime not null,
   nb_download          int,
   primary key (id)
);

/*==============================================================*/
/* Table : cours                                                */
/*==============================================================*/
create table cours
(
   id                   int not null,
   matiere_id          int not null,
   seance_id           int,
   titre                varchar(254),
   chapitre             varchar(254),
   contenue             varchar(254),
   fichiers_attaches    varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : dossier_medicales                                    */
/*==============================================================*/
create table dossier_medicales
(
   id                   int not null,
   eleve_id            int not null,
   etat_courant         varchar(254),
   maladies             varchar(254),
   vaccinations         varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : ecoles                                               */
/*==============================================================*/
create table ecoles
(
   id                   int not null,
   categorie_id        int not null,
   nom                  varchar(254),
   tel_1                varchar(254),
   tel_2                varchar(254),
   fax                  varchar(254),
   siteweb              varchar(254),
   code_ministre        varchar(254),
   adresse              varchar(254),
   logo                 varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : eleves                                               */
/*==============================================================*/
create table eleves
(
   id                   int not null,
   dossier_medicale_id int not null,
   ecole_id            int not null,
   profile_id          int not null,
   firstname            varchar(254),
   lastname             varchar(254),
   age                  int,
   date_insecription    datetime,
   address              int,
   tel                  int,
   sexe                 int,
   date_naissance       int,
   remarque             int,
   primary key (id)
);

/*==============================================================*/
/* Table : emloiyer                                             */
/*==============================================================*/
create table emloiyers
(
   id                   int not null,
   ecole_id            int not null,
   evenement_id        int,
   nom                  int,
   prenom               int,
   fonction             int,
   primary key (id)
);

/*==============================================================*/
/* Table : emplois                                              */
/*==============================================================*/
create table emplois
(
   id                   int not null,
   classe_id           int not null,
   ecole_id            int not null,
   annee                int,
   periode              datetime,
   primary key (id)
);

/*==============================================================*/
/* Table : epreuves                                             */
/*==============================================================*/
create table epreuves
(
   id                   int not null,
   matiere_id          int not null,
   name                 varchar(254),
   date                 int,
   content              varchar(254),
   trimestre            datetime,
   type                 varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : evenements                                           */
/*==============================================================*/
create table evenements
(
   id                   int not null,
   parent_id           int,
   ecole_id            int not null,
   nom                  int,
   start                datetime,
   end                  datetime,
   place                int,
   responsable          int,
   description          int,
   confirmer            int,
   primary key (id)
);

/*==============================================================*/
/* Table : groupes                                              */
/*==============================================================*/
create table groupes
(
   id                   int not null,
   classe_id           int not null,
   nom                  varchar(254),
   semaine              varchar(254),
   nb_eleves            int,
   primary key (id)
);

/*==============================================================*/
/* Table : groups                                               */
/*==============================================================*/
create table roles
(
   id                   int not null,
   name                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : heure_emplois                                        */
/*==============================================================*/
create table heure_emplois
(
   id                   int not null,
   emploi_id           int not null,
   salle_id            int,
   club_id            int not null,
   seance_id           int not null,
   professeur_id       int,
   evenement_id        int not null,
   start                DateTime,
   end                  DateTime,
   type                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : materiels                                            */
/*==============================================================*/
create table materiels
(
   id                   int not null,
   libelet              varchar(254),
   type                 varchar(254),
   qte                  int,
   primary key (id)
);

/*==============================================================*/
/* Table : matieres                                             */
/*==============================================================*/
create table matieres
(
   id                   int not null,
   ecole_id            int not null,
   name                 varchar(254),
   coeff                float,
   primary key (id)
);

/*==============================================================*/
/* Table : levels                                              */
/*==============================================================*/
create table levels
(
   id                   int not null,
   level_scolaire_id int not null,
   Anne_scolaire_id     int not null,
   label              varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : levels_scolaires                                    */
/*==============================================================*/
create table level_scolaires
(
   id                   int not null,
   niveau               varchar(254),
   remarque             varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : notes                                                */
/*==============================================================*/
create table notes
(
   id                   int not null,
   eleve_id            int not null,
   epreuve_id          int not null,
   value                int,
   type                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : parents                                              */
/*==============================================================*/
create table parents
(
   id                   int not null,
   profile_id          int not null,
   Situation_economique varchar(254),
   Situation_sociale    varchar(254),
   salaire              float,
   interets             varchar(254),
   ambitions            varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : participe_evenement                                  */
/*==============================================================*/
create table participe_evenements
(
   id            int not null,
   eleve_id            int not null,
   evenement_id        int not null,
   est_participe        int,
   primary key (id)
);

/*==============================================================*/
/* Table : professeurs                                          */
/*==============================================================*/
create table professeurs
(
   id                   int not null,
   profile_id          int not null,
   firstname            varchar(254),
   lastname             varchar(254),
   age                  int,
   cin                  int,
   primary key (id)
);

/*==============================================================*/
/* Table : profiles                                             */
/*==============================================================*/
create table profiles
(
   id                   int not null,
   ecole_id            int not null,
   professeur_id       int not null,
   parent_id           int not null,
   eleve_id            int not null,
   adresse              varchar(254),
   photo                varchar(254),
   Niveau               varchar(254),
   diplomes             varchar(254),
   specialite           varchar(254),
   langs                varchar(254),
   profession           varchar(254),
   adresse_travail             int,
   mail                 int,
   telephone            int,
   primary key (id)
);

/*==============================================================*/
/* Table : remarks                                              */
/*==============================================================*/
create table remarks
(
   id                   int not null,
   parent_id            int not null,
   professeur_id        int not null,
   subject              varchar(254),
   content              varchar(254),
   type                 int,
   primary key (id)
);

/*==============================================================*/
/* Table : responsable_club                                     */
/*==============================================================*/
create table responsable_clubs
(
   id                   int not null,
   professeur_id        int not null,
   club_id             int not null,
   est_responsable      int,
   primary key (id)
);

/*==============================================================*/
/* Table : salles                                               */
/*==============================================================*/
create table salles
(
   id                   int not null,
   ecole_id            int not null,
   number               int,
   label              varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : seances                                              */
/*==============================================================*/
create table seances
(
   id                   int not null,
   matiere_id          int not null,
   type                 varchar(254),
   primary key (id)
);

/*==============================================================*/
/* Table : users                                                */
/*==============================================================*/
create table users
(
   id                   int not null,
   role_id              int,
   login                varchar(254),
   email                varchar(254),
   primary key (id)
);