--task 2
select title, duration from song where duration=(select max(duration) from song); 
select title from song where duration>=210;
select name from collection where year between 2018 and 2022;
select name from singer where (LENGTH(name)-LENGTH(REPLACE(name,' ',''))+1)=1;
select title from song where title like '%мой%' or title like '%my%';

--task 3

select genre_id, count(*) from singergenre group by genre_id;

select count(s.id) from song s join album a on a.id = s.album_id where a.year between 2018 and 2020;

select album_id, avg(duration) from song group by album_id;

select s.name 
from singer s
join singeralbum s2 on s.id = s2.singer_id
join album a on a.id = s2.album_id
where a.year != 2020
group by s.name;

select c.name, a.name 
from collection c 
join collectionsong cs on c.id = cs.collection_id 
join song s on s.id = cs.song_id
join album a on s.album_id = a.id
join singeralbum sa on a.id = sa.album_id
join singer si on si.id = sa.singer_id
where si.name = 'Кровосток';
