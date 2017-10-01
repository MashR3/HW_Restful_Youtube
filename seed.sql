DROP TABLE IF EXISTS vids;

CREATE TABLE vids (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	url VARCHAR,
	description TEXT,
	genre TEXT 
);


INSERT INTO vids (title, url, description, genre) VALUES ('Funny Pet Meme Animal Video Compilation 2016', 'https://www.youtube.com/embed/5AI7_i_K_2o', 'From inspiring dogs to athletic puppies, these hilarious memes show us that pets truly do get us.

The Pet Collective is home to the top trending clips, most entertaining memes, and funniest animal videos online.  Simply put, we think animals are the best ever. If you agree, let’s make it YouTube official right here, right meow.', 'Comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('People Who Use Long Words', 'https://www.youtube.com/embed/LZCRxxb_rwY', 'When I say "Long" I really mean "Fancy-ish", somewhat obscure word that considerably more people will not have heard of, than will have, but you can see how just saying "long" is a decent bit shorter. 

And there is a slight contradiction of my logic intentionally left in the video, so for the self-righteous guy who is going to come to this video, spot it and try to sound like some Sherlock Holmes-esque smartarse by pointing it out and making a big deal out of it, try not to comment about it lol. It was left in for comedy sake, please relax. Put down the knife and step away from the keyboard', 'Comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('Joanne the Scammer "Get Out of My Caucasian House" Welcome Mat', 'https://www.youtube.com/embed/jTxny0mCxLs', 'Live like Joanne the Scammer with this iconic limited edition "Get Out of My Caucasian House" welcome mat by Super Deluxe. http://store.superdeluxe.com
50% of the profits will be donated to the ACLU.', 'Entertainment');
INSERT INTO vids (title, url, description, genre) VALUES ('Sabrina & Salem: Together Again', 'https://www.youtube.com/embed/b858rOO21Fw', 'Sabrina, the Teenage Witch was a huge show with their two stars, Melissa Joan Hart & Salem the Cat. The two reunite in this magical new video.', 'Comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('The Duck Song', 'https://www.youtube.com/embed/MtN1YnoL46Q', 'Song by Bryant Oden. Video by Forrest Whaley.', 'Comedy');