/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT film.film_id, title, count(DISTINCT inventory_id) 
FROM film, inventory 
WHERE film.film_id = inventory.film_id
GROUP BY film.film_id
HAVING title ILIKE 'h%'
ORDER BY film_id DESC;
