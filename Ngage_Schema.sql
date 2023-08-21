CREATE TABLE "ngage_models" (
	"id"	INTEGER NOT NULL,
	"name"	VARCHAR(50) NOT NULL,
	"release_date"	DATE NOT NULL,
	"manufacturer"	VARCHAR(50) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "genres" (
	"Genreid"     INTEGER NOT NULL,
       "name"        NVARCHAR(120),
	PRIMARY KEY("genreid" AUTOINCREMENT)
);

CREATE TABLE "developers" (
	"Devid"       INTEGER NOT NULL,
	"name"        NVARCHAR(120),
	PRIMARY KEY("devid" AUTOINCREMENT)
);

CREATE TABLE "publishers" (
	"Pubid"	INTEGER NOT NULL,
	"name"        NVARCHAR(120),
	PRIMARY KEY("pubid" AUTOINCREMENT)
);

CREATE TABLE "cancelled_games" (
	"Game_Num"	INTEGER,
	"Title"	VARCHAR(100),
	"Genreid"	INT,
	"Devid"	INT,
	"Pubid"	INT,
	"planned_release_date"	DATE,
	"notes"	VARCHAR(100),
	PRIMARY KEY("" AUTOINCREMENT),
       FOREIGN KEY("Genreid") REFERENCES "genres"("Genreid")
       FOREIGN KEY("Devid") REFERENCES "Devids"("Devid")
       FOREIGN KEY("Pubid") REFERENCES "publishers"("Pubid")
);

CREATE TABLE "released_games" (
        "Game_Num"	INTEGER,
	"Title"	INT NOT NULL,
	"Genreid"	INT NOT NULL,
	"Devid"	INT NOT NULL,
	"Pubid"	INT NOT NULL,
	"release_date_na"	DATE,
	"release_date_pal"	DATE,
	PRIMARY KEY("" AUTOINCREMENT),
       FOREIGN KEY("Genreid") REFERENCES "genres"("Genreid")
       FOREIGN KEY("Devid") REFERENCES "Devids"("Devid")
       FOREIGN KEY("Pubid") REFERENCES "publishers"("Pubid")
);
