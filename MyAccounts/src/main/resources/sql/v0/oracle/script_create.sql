/* ----------------------- STRUCTURE DATABASE ------------------------- */
/* -------------------------------------------------------------------- */

/* ---------------- DELETE STRUCTURE -------------- */
/* ------------------------------------------------ */
PROMPT Message : Supression de la structure en cours...
DROP TABLE consumers cascade constraints; /* ------ */
DROP SEQUENCE seq_consumers; /* ------------------- */
DROP TABLE accounts cascade constraints; /* ------- */
DROP SEQUENCE seq_accounts; /* -------------------- */
DROP TABLE owners cascade constraints; /* --------- */
DROP TABLE types cascade constraints; /* ---------- */
DROP SEQUENCE seq_types; /* ----------------------- */
DROP TABLE payedFor cascade constraints; /* ------- */
DROP TABLE transacts cascade constraints; /* ------ */
DROP SEQUENCE seq_transacts; /* ------------------- */
DROP TABLE categories cascade constraints; /* ----- */
DROP SEQUENCE seq_categories; /* ------------------ */
DROP TABLE subcategories cascade constraints; /* -- */
DROP SEQUENCE seq_subcategories; /* --------------- */
DROP TABLE budgets cascade constraints; /* -------- */
PROMPT Message :  Suppresion de la structure terminée.
/* ------------------------------------------------ */
/* ------------------------------------------------ */

/* -------------------------- CREATE STRUCTURE ------------------------ */
/* -------------------------------------------------------------------- */
PROMPT Message :  Création de la structure de la base.
/* -------------------------------------------------------------------- */

/* --------------- TABLE CONSUMERS ---------------- */
PROMPT Message :  Création de la table CONSUMERS en cours...
CREATE TABLE consumers( /* ------------------------ */
	id int primary key, /* ------------------------ */
	pseudo varchar(25) not null unique, /* -------- */
	password varchar(255) not null, /* ------------ */
	firstname varchar(30) not null, /* ------------ */
	name varchar(30) not null, /* ----------------- */
	mail varchar(50), /* -------------------------- */
	img varchar(50), /* --------------------------- */
	active int not null /* ------------------------ */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_consumers /* ------------------ */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table CONSUMERS terminée.
/* ------------------------------------------------ */

/* ---------------- TABLE ACCOUNTS ---------------- */
PROMPT Message :  Création de la table ACCOUNTS en cours...
CREATE TABLE accounts ( /* ------------------------ */
	id int primary key, /* ------------------------ */
	name varchar(15) not null, /* ----------------- */
	type int not null /* -------------------------- */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_accounts /* ------------------- */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table ACCOUNTS terminée.
/* ------------------------------------------------ */

/* ---------------- TABLE OWNERS ------------------ */
PROMPT Message :  Création de la table OWNERS en cours...
CREATE TABLE owners ( /* -------------------------- */
	consumer int not null, /* --------------------- */
	account int not null /* ----------------------- */
); /* --------------------------------------------- */
PROMPT Message :  Création de la table OWNERS terminée.
/* ------------------------------------------------ */

/* ---------------- TABLE TYPES ------------------- */
PROMPT Message :  Création de la table TYPES en cours...
CREATE TABLE types ( /* --------------------------- */
	id int primary key, /* ------------------------ */
	name varchar(25) /* --------------------------- */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_types /* ---------------------- */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table TYPES terminée.
/* ------------------------------------------------ */

/* --------------- TABLE PAYEDFOR ----------------- */
PROMPT Message :  Création de la table PAYEDFOR en cours...
CREATE TABLE payedFor ( /* ------------------------ */
	consumer int not null, /* --------------------- */
	transact int not null /* ---------------------- */
); /* --------------------------------------------- */
PROMPT Message :  Création de la table PAYEDFOR terminée.
/* ------------------------------------------------ */

/* --------------- TABLE TRANSACTS ---------------- */
PROMPT Message :  Création de la table TRANSACTS en cours...
CREATE TABLE transacts ( /* ----------------------- */
	id int primary key, /* ------------------------ */
	title varchar(25) not null, /* ---------------- */
	description varchar(50), /* ------------------- */
	dateTransact date not null, /* ---------------- */
	dateValue date, /* ---------------------------- */
	value decimal not null, /* -------------------- */
	categorie int, /* ----------------------------- */
	payedBy int not null, /* ---------------------- */
	account int not null /* ----------------------- */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_transacts /* ------------------ */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table TRANSACTS terminée.
/* ------------------------------------------------ */

/* --------------- TABLE CATEGORIES --------------- */
PROMPT Message :  Création de la table CATEGORIES en cours...
CREATE TABLE categories( /* ----------------------- */
	id int primary key, /* ------------------------ */
	name varchar(25) unique not null, /* ---------- */
	value int not null /* ------------------------- */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_categories /* ----------------- */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table CATEGORIES terminée.
/* ------------------------------------------------ */

/* ------------- TABLE SUBCATEGORIES -------------- */
PROMPT Message :  Création de la table SUBCATEGORIES en cours...
CREATE TABLE subcategories( /* -------------------- */
	id int primary key, /* ------------------------ */
	name varchar(25), /* -------------------------- */
	valueBudget int not null, /* ------------------ */
	categorie int not null /* --------------------- */
); /* --------------------------------------------- */
CREATE SEQUENCE seq_subcategories /* -------------- */
	start with 1 /* ------------------------------- */
 	increment by 1; /* ---------------------------- */
PROMPT Message :  Création de la table SUBCATEGORIES terminée.
/* ------------------------------------------------ */

/* --------------- TABLE BUDGETS ------------------ */
PROMPT Message :  Création de la table BUDGETS en cours...
CREATE TABLE budgets( /* -------------------------- */
	consumer int not null, /* --------------------- */
	categorie int not null, /* -------------------- */
	value decimal /* ------------------------------ */
); /* --------------------------------------------- */
PROMPT Message :  Création de la table BUDGETS terminée.
/* ------------------------------------------------ */

/* -------------------------------------------------------------------- */
PROMPT Message :  Création de la structure de la base terminée.
/* -------------------------------------------------------------------- */

/* -------------------------- LINK DATABASE --------------------------- */
/* -------------------------------------------------------------------- */
PROMPT Message :  Création des liens entre les tables.
/* -------------------------------------------------------------------- */

/* ------------------------ LINK OWNERS ------------------------- */
PROMPT Message :  Création des liens de la table OWNERS...
ALTER TABLE owners /* ------------------------------------------- */
	ADD CONSTRAINT fk_owners_consumers /* ----------------------- */
	FOREIGN KEY (consumer) references consumers(id); /* --------- */
ALTER TABLE owners /* ------------------------------------------- */
	ADD CONSTRAINT fk_owners_accounts /* ------------------------ */
	FOREIGN KEY (account) references accounts(id); /* ----------- */
PROMPT Message :  Création des liens de la table OWNERS terminée.
/* -------------------------------------------------------------- */

/* ------------------------ LINK ACCOUNTS ----------------------- */
PROMPT Message :  Création des liens de la table ACCOUNTS...
ALTER TABLE accounts /* ----------------------------------------- */
	ADD CONSTRAINT fk_accounts_types /* ------------------------- */
	FOREIGN KEY (type) references types(id); /* ----------------- */
PROMPT Message :  Création des liens de la table ACCOUNTS terminée.
/* -------------------------------------------------------------- */

/* ------------------------ LINK PAYEDFOR ----------------------- */
PROMPT Message :  Création des liens de la table PAYEDFOR...
ALTER TABLE payedfor /* ----------------------------------------- */
	ADD CONSTRAINT fk_payedfor_consumers /* --------------------- */
	FOREIGN KEY (consumer) references consumers(id); /* --------- */
ALTER TABLE payedfor /* ----------------------------------------- */
	ADD CONSTRAINT fk_payedfor_transacts /* --------------------- */
	FOREIGN KEY (consumer) references transacts(id); /* --------- */
PROMPT Message :  Création des liens de la table PAYEDFOR terminée.
/* -------------------------------------------------------------- */

/* ---------------------- LINK TRANSACTS ------------------------ */
PROMPT Message :  Création des liens de la table TRANSACTS...
ALTER TABLE transacts /* ---------------------------------------- */
	ADD CONSTRAINT fk_transacts_consumers /* -------------------- */
	FOREIGN KEY (payedBy) references consumers(id); /* ---------- */
ALTER TABLE transacts /* ---------------------------------------- */
	ADD CONSTRAINT fk_transacts_subcategories /* ---------------- */
	FOREIGN KEY (categorie) references subcategories(id); /* ---- */
ALTER TABLE transacts /* ---------------------------------------- */
	ADD CONSTRAINT fk_transacts_accounts /* --------------------- */
	FOREIGN KEY (account) references accounts(id); /* ----------- */
PROMPT Message :  Création des liens de la table TRANSACTS terminée.
/* -------------------------------------------------------------- */

/* -------------------- LINK SUBCATEGORIES ---------------------- */
PROMPT Message :  Création des liens de la table SUBCATEGORIES...
ALTER TABLE subcategories /* ------------------------------------ */
	ADD CONSTRAINT fk_subcategories_categories /* --------------- */
	FOREIGN KEY (categorie) references categories(id); /* ------- */
PROMPT Message :  Création des liens de la table SUBCATEGORIES terminée.
/* -------------------------------------------------------------- */

/* ------------------------ LINK BUDGETS ------------------------ */
PROMPT Message :  Création des liens de la table BUDGETS...
ALTER TABLE budgets /* ------------------------------------------ */
	ADD CONSTRAINT fk_budgets_consumers /* ---------------------- */
	FOREIGN KEY (consumer) references consumers(id); /* --------- */
ALTER TABLE budgets /* ------------------------------------------ */
	ADD CONSTRAINT fk_budgets_categories /* --------------------- */
	FOREIGN KEY (consumer) references categories(id); /* -------- */
PROMPT Message :  Création des liens de la table BUDGETS terminée.
/* -------------------------------------------------------------- */

/* -------------------------------------------------------------------- */
PROMPT Message :  Création des liens entre les tables terminé.
/* -------------------------------------------------------------------- */
