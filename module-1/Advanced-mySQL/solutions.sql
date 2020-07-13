# Challenge 1
## Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
SELECT titleauthor.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

## Step 2: Aggregate the total royalties for each title and author
SELECT summary.title_id, summary.au_id, SUM(summary.sales_royalty) AS AggRoyalty
FROM (
SELECT titleauthor.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
) summary
GROUP BY summary.title_id, summary.au_id;

## Step 3: Calculate the total profits of each author
SELECT summary.title_id, summary.au_id, SUM(summary.sales_royalty) AS AggRoyalty, SUM(summary.advance) AS AggAdvance, SUM(summary.sales_royalty)+SUM(summary.advance) AS Profit

FROM (
SELECT titleauthor.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
) summary

GROUP BY summary.title_id, summary.au_id, summary.sales_royalty, summary.advance
ORDER BY profit DESC
LIMIT 3;

# Challenge 2
## Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
CREATE TEMPORARY TABLE step1
SELECT titleauthor.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titleauthor
INNER JOIN titles
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

select * from step1;

# Step 2: Aggregate the total royalties for each title and author
CREATE TEMPORARY TABLE step2
SELECT step1.title_id, step1.au_id, SUM(step1.sales_royalty) AS AggRoyalty, step1.advance
FROM step1
GROUP BY step1.title_id, step1.au_id, step1.advance;

select * from step2;
-- drop table step2;

## Step 3: Calculate the total profits of each author
SELECT step2.au_id, SUM(step2.AggRoyalty)+SUM(step2.advance) AS Profit
FROM step2
GROUP BY au_id
ORDER BY Profit DESC
LIMIT 3;

# Challenge 3
CREATE TABLE roos_most_profiting_authors
SELECT step2.au_id, SUM(step2.AggRoyalty)+SUM(step2.advance) AS Profit
FROM step2
GROUP BY au_id
ORDER BY Profit DESC
LIMIT 3;

select * from roos_most_profiting_authors;

