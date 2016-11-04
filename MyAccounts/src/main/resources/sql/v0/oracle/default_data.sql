/* --------------------- CONSUMERS DATA ------------------------ */
/* ------------------------------------------------------------- */
INSERT INTO consumers VALUES (seq_consumers.NEXTVAL,'admin','admin','admin','admin',null,null,1);
INSERT INTO consumers VALUES (seq_consumers.NEXTVAL,'abretin','abretin','Aur�lien','Bretin',null,null,1);
/* ------------------------------------------------------------- */
/* ---------------------- TYPES DATA --------------------------- */
/* ------------------------------------------------------------- */
INSERT INTO types VALUES (seq_types.NEXTVAL,'Compte D�pot');
INSERT INTO types VALUES (seq_types.NEXTVAL,'Livret');
INSERT INTO types VALUES (seq_types.NEXTVAL,'Cr�dit');
/* ------------------------------------------------------------- */
/* ------------------ CATEGORIES DATA -------------------------- */
/* ------------------------------------------------------------- */
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Abonnements',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Achats '||'&'||' Shopping',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Alimentation '||'&'||' Restau.',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Auto '||'&'||' Transports',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Banque',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Divers',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'D�penses pro',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Esth�tique '||'&'||' Soins',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Imp�ts '||'&'||' Taxes',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Logement',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Loisirs '||'&'||' Sorties',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Retraits, Chq. et Vir.',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Sant�',-1);
INSERT INTO categories VALUES (seq_categories.NEXTVAL,'Scolarit� '||'&'||' Enfants',-1);
/* ------------------------------------------------------------- */
/* ---------------- SUBCATEGORIES DATA ------------------------- */
/* ------------------------------------------------------------- */
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Autres',1,1);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'C�ble/Satellite',1,1);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Internet',1,1);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'T�l�phonie Fixe',1,1);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'T�l�phonie Mobile',1,1);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Autres',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Articles de sport',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Cadeaux',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Films '||'&'||' DVDs',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'High Tech',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Licences',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Livres',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Musique',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'V�tements/Chaussures',1,2);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Autres',1,3);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Caf�',1,3);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Fast Foods',1,3);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Restaurants',1,3);
INSERT INTO subcategories VALUES (seq_subcategories.NEXTVAL,'Supermarch�/Epicerie',1,3);