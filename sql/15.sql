/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT name, count AS "sum" FROM category_counts_by_language('English')
