insert into artist (name) values ('Hatsune Miku')
insert into artist (name) values ('The Killers')
insert into artist (name) values ('Madeon')

select * from artist
order by name
limit 5



select first_name, last_name from employee
where city = 'Calgary'

select * from employee
where reports_to = 2

select count(*) from employee
where city = 'Lethbridge'



select count(*) from invoice
where billing_country = 'USA'

select total  from invoice
order by total desc
limit 1
or 
select max(total) from invoice
-- The second option I realize it a lot easier

select total  from invoice
order by total 
limit 1

select * from invoice
where total > 5

select count(*) from invoice
where total < 5

select sum(total) from invoice



Select invoice, invoice_line.invoice_id, invoice.invoice_id 
from invoice
join invoice_line
on invoice_line.invoice_id = invoice.invoice_id
where unit_price > .99

select invoice_date,first_name,last_name,total from invoice i
join customer c
on c.customer_id = i.customer_id

select c.first_name,c.last_name,e.first_name,e.last_name from customer c
join employee e
on c.support_rep_id = e.employee_id

select a.title, b.name from album a
join artist b
on b.artist_id = a.artist_id



select name from artist
order by name desc
limit 10

select name from artist
where name like 'Black%'

select name from artist
where name like '%Black%'

select max(birth_date) from employee

select min(birth_date) from employee

select count(*) from invoice
where billing_state in ('CA','AZ','TX')

select avg(total) from invoice

Select t.track_id
from playlist_track t
join playlist p
on t.playlist_id = p.playlist_id
where name = 'Music'

SELECT t.name
FROM track t
JOIN playlist_track p
ON t.track_id = p.track_id
WHERE p.playlist_id = 5;

Select p.name, t.name
from playlist p
join playlist_track pt
on p.playlist_id = pt.playlist_id
join track t
on pt.track_id = t.track_id

select t.name, a.title
from album a
join track t
on a.album_id = t.album_id
join genre g 
on t.genre_id = g.genre_id
where g.name = 'Alternative & Punk'