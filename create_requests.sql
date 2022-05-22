create table if not exists musician (
	id_musician serial primary key,
	name_musician varchar(100) not null unique
);

create table if not exists album (
	id_album serial primary key,
	name_album varchar(100) not null unique,
	year_album integer not null
);

create table if not exists track (
	id_album integer references album(id_album),
	id_track serial primary key,
	name_track varchar(100) not null unique,
	duration_track numeric(10,2) not null
);

create table if not exists genre (
	id_genre serial primary key,
	name_genre varchar(100) not null unique
);

create table if not exists collection (
	id_collection serial primary key,
	name_collection varchar(100) not null unique,
	year_collection integer not null
);

create table if not exists musician_album (
	primary key(id_musician, id_album),
	id_musician integer references musician(id_musician),
	id_album integer references album(id_album)
);

create table if not exists musician_genre (
	primary key(id_musician, id_genre),
	id_musician integer references musician(id_musician),
	id_genre integer references genre(id_genre)
);

create table if not exists collection_track (
	id serial primary key,
	id_collection integer references collection(id_collection),
	id_track integer references track(id_track)
);
