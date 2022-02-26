use sakila;

#Get all pairs of actors that worked together.

select f1.film_id, f2.actor_id as actor_1, f1.actor_id as actor_2
from film_actor f1
join film_actor f2
on f1.film_id = f2.film_id
and f1.actor_id <> f2.actor_id;

#Get all pairs of customers that have rented the same film more than 3 times.

select i1.inventory_id, i1.customer_id as customer_1, i2.customer_id as customer_2
from rental i1
join rental i2
on i1.inventory_id = i2.inventory_id
and i1.customer_id <> i2.customer_id;

select i1.inventory_id, i1.customer_id, count(distinct i1.customer_id) as times_rented, count(distinct i2.customer_id) as times_rented2
from rental i1
join rental i2
on i1.inventory_id = i2.inventory_id
and i1.customer_id <> i2.customer_id
group by i1.inventory_id, i1.customer_id;


select * from rental;

#Get all possible pairs of actors and films.

select * from actor as actor
cross join  film as film
limit 100;
