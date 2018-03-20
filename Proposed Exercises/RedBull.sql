.mode columns
.headers on

DROP TABLE IF EXISTS TEAM;
DROP TABLE IF EXISTS AIRCRAFT;
DROP TABLE IF EXISTS PILOT;
DROP TABLE IF EXISTS RACE;
DROP TABLE IF EXISTS PARTICIPATION;
DROP TABLE IF EXISTS DUEL;

CREATE TABLE TEAM (
   idTeam INTEGER PRIMARY KEY,
   name TEXT,
   country TEXT
);

CREATE TABLE AIRCRAFT (
   idAircraft INTEGER PRIMARY KEY,
   model TEXT,
   horsepower INTEGER,
   topspeed INTEGER,
   width INTEGER,
   height INTEGER,
   weight INTEGER
);

CREATE TABLE PILOT (
   idPilot INTEGER PRIMARY KEY,
   firstname TEXT,
   surname TEXT,
   nationality TEXT,
   birthday TEXT,
   teamId INTEGER,
   idAircraft INTEGER,
   FOREIGN KEY (teamId) REFERENCES TEAM,
   FOREIGN KEY (idAircraft) REFERENCES AIRCRAFT
);

CREATE TABLE RACE (
   location TEXT NOT NULL,
   edition INTEGER NOT NULL,
   country TEXT,
   racedate DATE UNIQUE,
   gates INTEGER,
   eliminations INTEGER,
   PRIMARY KEY (location, edition)
);

CREATE TABLE PARTICIPATION (
    idPilot INTEGER,
    location TEXT,
    edition INTEGER,
    trainingTime INTEGER CHECK (trainingTime > 0),
    trainingPos INTEGER CHECK (trainingPos >= 1),
    qualificationPenalty INTEGER,
    eliminationTime INTEGER CHECK (eliminationTime > 0),
    eliminationPos INTEGER CHECK (eliminationPos >= 1),
    eliminationPenalty INTEGER,
    PRIMARY KEY (idPilot, location, edition),
    FOREIGN KEY (idPilot) REFERENCES PILOT,
    FOREIGN KEY (location, edition) REFERENCES RACE
);

CREATE TABLE DUEL (
   idPilot1 INTEGER REFERENCES PILOT,
   idPilot2 INTEGER REFERENCES PILOT,
   location TEXT,
   edition INTEGER,
   duelType TEXT,
   timePilot1 INTEGER CHECK (timePilot1 > 0),
   timePilot2 INTEGER CHECK (timePilot2 > 0),
   penaltyPilot1 TEXT,
   penaltyPilot2 TEXT,
   FOREIGN KEY (location, edition) REFERENCES RACE,
   PRIMARY KEY (idPilot1, idPilot2, location, edition)
);
