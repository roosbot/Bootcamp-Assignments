# Challenge 1
SELECT titleauthor.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname AS FIRST_NAME, titles.title as TITLE, publishers.pub_name as PUBLISHER
FROM authors
INNER JOIN titleauthor
ON  authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id;

# Challenge 2
SELECT titleauthor.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname AS FIRST_NAME, publishers.pub_name as PUBLISHER, COUNT(titles.title) AS TITLE_COUNT
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY titleauthor.au_id, authors.au_lname, authors.au_fname, publishers.pub_name;


# Challenge 3
SELECT titleauthor.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname AS FIRST_NAME, SUM(sales.qty) AS TOTAL
FROM authors
INNER JOIN titleauthor
ON titleauthor.au_id = authors.au_id
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, authors.au_lname, authors.au_fname
ORDER BY TOTAL DESC
LIMIT 3;

# Challenge 4
SELECT titleauthor.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname AS FIRST_NAME, SUM(sales.qty) AS TOTAL
FROM authors
LEFT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
LEFT JOIN titles
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, authors.au_lname, authors.au_fname
ORDER BY TOTAL DESC;
