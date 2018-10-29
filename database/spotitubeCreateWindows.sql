

USE master
GO
CREATE DATABASE spotitube;
GO
USE spotitube;
go

CREATE TABLE Users (
  gebruiker VARCHAR(45) NOT NULL PRIMARY KEY,
  wachtwoord VARCHAR(45) NOT NULL,
  )
  go

CREATE TABLE Playlist (
  id		INT			NOT NULL,
  name		VARCHAR(45) NOT NULL,
  owner		VARCHAR(45) NULL,
 
  PRIMARY KEY (id),
 
  
  CONSTRAINT fkOwner FOREIGN KEY (owner)
    REFERENCES Users (gebruiker)
    ON DELETE NO ACTION ON UPDATE CASCADE
    );
go

CREATE TABLE Tracks (
  id					INT			NOT NULL,
  title					VARCHAR(45) NOT NULL,
  performer				VARCHAR(45) NOT NULL,
  duration				INT			NOT NULL,
  album					VARCHAR(45) NULL,
  playcount				INT			NULL,
  publicationDate		DATETIME	NULL,
  description			VARCHAR(100) NULL,
  offlineAvailable		TINYINT		NULL,
  PRIMARY KEY (id)
  );
go

CREATE TABLE TracksInPlaylist (
  playlistID		INT NOT NULL,
  TrackID			INT NOT NULL,
  
  CONSTRAINT fkplaylist FOREIGN KEY (playlistID)
    REFERENCES Playlist (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION,
    
  CONSTRAINT fkTrack FOREIGN KEY (TrackID)
    REFERENCES Tracks (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION
    );

