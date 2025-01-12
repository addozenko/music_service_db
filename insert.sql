insert into Singer("name") values ('Кровосток');
insert into Singer("name") values ('Хаски');
insert into Singer("name") values ('Rammstein');
insert into Singer("name") values ('Metallica');
insert into Singer("name") values ('Хаски_2');

insert into Genre("name") values ('rap');
insert into Genre("name") values ('pop');
insert into Genre("name") values ('rock');

insert into SingerGenre("genre_id", "singer_id") values ('1', '1');
insert into SingerGenre("genre_id", "singer_id") values ('1', '2');
insert into SingerGenre("genre_id", "singer_id") values ('3', '3');
insert into SingerGenre("genre_id", "singer_id") values ('3', '4');

insert into Album("name", "year") values ('Река крови', '2004');
insert into Album("name", "year") values ('Искажение', '2018');
insert into Album("name", "year") values ('Mutter', '2001');
insert into Album("name", "year") values ('Metallica', '1991');
insert into Album("name", "year") values ('Искажение_2', '2020');

insert into SingerAlbum("album_id", "singer_id") values ('1', '1');
insert into SingerAlbum("album_id", "singer_id") values ('2', '2');
insert into SingerAlbum("album_id", "singer_id") values ('3', '3');
insert into SingerAlbum("album_id", "singer_id") values ('4', '4');
insert into SingerAlbum("album_id", "singer_id") values ('9', '5');

insert into Collection("name", "year") values ('Кровосток любимое', '2018');
insert into Collection("name", "year") values ('Хаски любимое', '2018');
insert into Collection("name", "year") values ('Rammstein любимое', '2024');
insert into Collection("name", "year") values ('Metallica любимое', '2024');

insert into Song("title", "duration", "album_id", "collection_id") values ('Интро', '76', '1', '1');
insert into Song("title", "duration", "album_id", "collection_id") values ('Биография', '187', '1', '1');
insert into Song("title", "duration", "album_id", "collection_id") values ('мой', '187', '1', '1');
insert into Song("title", "duration", "album_id", "collection_id") values ('Пуля-дура', '192', '2', '2');
insert into Song("title", "duration", "album_id", "collection_id") values ('Ай', '188', '2', '2');
insert into Song("title", "duration", "album_id", "collection_id") values ('my', '188', '2', '2');
insert into Song("title", "duration", "album_id", "collection_id") values ('Sonne', '280', '3', '3');
insert into Song("title", "duration", "album_id", "collection_id") values ('Mutter', '269', '3', '3');
insert into Song("title", "duration", "album_id", "collection_id") values ('Enter Sandman', '332', '4', '4');
insert into Song("title", "duration", "album_id", "collection_id") values ('Wherever i may roam', '404', '4', '4');

insert into CollectionSong("collection_id", "song_id") values ('1', '1');
insert into CollectionSong("collection_id", "song_id") values ('1', '2');
insert into CollectionSong("collection_id", "song_id") values ('2', '3');
insert into CollectionSong("collection_id", "song_id") values ('2', '4');
insert into CollectionSong("collection_id", "song_id") values ('3', '5');
insert into CollectionSong("collection_id", "song_id") values ('3', '6');
insert into CollectionSong("collection_id", "song_id") values ('4', '7');
insert into CollectionSong("collection_id", "song_id") values ('4', '8');


