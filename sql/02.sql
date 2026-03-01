/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

CREATE OR REPLACE FUNCTION get_actor_ids(text) RETURNS TABLE(actor_id INTEGER) AS
$$
        SELECT actor_id FROM actor
        WHERE first_name ILIKE $1 || '%'
        ORDER BY actor_id ASC;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;


SELECT * FROM get_actor_ids('j');
