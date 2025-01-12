
create table if not exists Genre (
	id SERIAL primary key,
	name varchar(20) not null
);

create table if not exists Singer (
	id SERIAL primary key,
	name varchar(20) not null
);

create table if not exists SingerGenre (
	genre_id integer not null REFERENCES Genre(id),
	singer_id integer not null REFERENCES Singer(id)
);

create table if not exists Album (
	id SERIAL primary key,
	name varchar(20) not null,
	year integer
);

create table if not exists SingerAlbum (
	album_id integer not null REFERENCES Album(id),
	singer_id integer not null REFERENCES Singer(id)
);

create table if not exists Collection (
	id SERIAL primary key,
	name varchar(20) not null,
	year integer
);

create table if not exists Song (
	id SERIAL primary key,
	title varchar(20) not null,
	duration int not null,
	album_id integer references Album(id),
	collection_id integer references Collection(id)
);

create table if not exists CollectionSong (
	collection_id integer REFERENCES Collection(id),
	song_id integer REFERENCES Song(id),
	constraint pk primary key (collection_id, song_id)
);


