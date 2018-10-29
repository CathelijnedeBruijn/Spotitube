USE spotitube;
go

insert into Tracks values
	(1,'Song for someone','The Frames',350,'The cost',0,null,null,0),
	(2,'The cost','The Frames', 423,null,37,10-01-2005,'Title song from the Album The Cost',1),
	(3,'Ocean and a rock','Lisa Hannigan',337,'Sea sew', null,null,null,0), 
    (4,'So Long, Marianne','Leonard Cohen',546,'Songs of Leonard Cohen',null,null,null,0),
	(5,'One','Metallica',423,null,37,1-11-2001,'Long version',1);


insert into users values
	('cathelijne','123'),
	('test','test');

insert into Playlist values
	(1,'Heavy Metal','cathelijne'),
	(2,'Pop','test' ),
	(3,'Progressive Rock','cathelijne');

insert into TracksInPlaylist values
	(1,5),
	(1,3),
	(1,4),
	(2,2);




