DROP TABLE IF EXISTS vids;

CREATE TABLE vids (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	url VARCHAR,
	description TEXT,
	genre TEXT 
);


INSERT INTO vids (title, url, description, genre) VALUES ('Hands Free', 'https://www.youtube.com/watch?v=DfMKmuzaijA', 'Music video by Keke Palmer performing Hands Free. (C) 2016 Island Records, a division of UMG Recordings, Inc.', 'R&B - Music');
INSERT INTO vids (title, url, description, genre) VALUES ('Peace Sign', 'https://www.youtube.com/watch?v=t8X0j9uqO4U', 'Released via Atlantic Records #GirlDisrupted available now: https://Atlantic.lnk.to/GirlDisruptedAY', 'R&B - Music');
INSERT INTO vids (title, url, description, genre) VALUES ('Faded to Sade', 'https://www.youtube.com/watch?v=-U39xCDVXqQ', 'Music video by Lyrica Anderson performing Faded to Sade (Audio). 2017 Lyrica Anderson / EMPIRE', 'R&B - Music');
INSERT INTO vids (title, url, description, genre) VALUES ('Birthday', 'https://www.youtube.com/watch?v=MlwRD651bmo', 'K.Michelle - Birthday available now! Stream/Download: https://Atlantic.lnk.to/BirthdayID', 'R&B - Music');
INSERT INTO vids (title, url, description, genre) VALUES ('Hands Tied', 'https://www.youtube.com/watch?v=9JpVynh9HWU', '© 2010 WMGHands Tied (Video)', 'R&B - Music');