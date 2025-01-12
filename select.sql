select title, duration from song where duration=(select max(duration) from song); 
select title from song where duration>=210;
select name from collection where year between 2018 and 2022;
select name from singer where (LENGTH(name)-LENGTH(REPLACE(name,' ',''))+1)=1;
select title from song where title like '%мой%' or title like '%my%';

select count(singer_id) from singergenre where genre_id = (select id from genre where name='rap');
select count(singer_id) from singergenre where genre_id = (select id from genre where name='pop');
select count(singer_id) from singergenre where genre_id = (select id from genre where name='rock');

select count(id) from song where album_id = (select id from album where year between 2018 and 2020);

select AVG(duration) from song where album_id = (select id from album where name='Река крови');
select AVG(duration) from song where album_id = (select id from album where name='Искажение');
select AVG(duration) from song where album_id = (select id from album where name='Mutter');
select AVG(duration) from song where album_id = (select id from album where name='Metallica');

select s.name
from singer s 
join singeralbum sa on s.id = sa.singer_id 
join album a on a.id = sa.album_id
where a.year <> '2020';

select c.name, a.name 
from collection c 
join collectionsong cs on c.id = cs.collection_id 
join song s on s.id = cs.song_id
join album a on s.album_id = a.id
join singeralbum sa on a.id = sa.album_id
join singer si on si.id = sa.singer_id
where si.name = 'Кровосток';
