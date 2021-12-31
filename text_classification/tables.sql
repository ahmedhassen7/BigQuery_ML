WITH extracted AS (

SELECT
  source,
  REGEXP_REPLACE(LOWER(REGEXP_REPLACE(title,'[^a-zA-Z0-9 $.-]', ' ')),'  ',' ') AS title
FROM (
  SELECT
    ARRAY_REVERSE(SPLIT(REGEXP_EXTRACT(url,'.*://(.[^/]+)/'),'.'))[OFFSET(1)] AS source,
    title
  FROM `bigquery-public-data.hacker_news.stories`
  WHERE
    REGEXP_CONTAINS(REGEXP_EXTRACT(url,'.*://(.[^/]+)/'), '.com$')
    AND LENGTH(title) > 10 )
), ds AS (
SELECT
    ARRAY_CONCAT(SPLIT(title, " "), ['NULL','NULL','NULL','NULL','NULL']) AS words,
    source
  FROM  `fourth-blend-336210.advdata.extracted`
  WHERE
    (source='github' OR source='nytimes' OR source='techcrunch')
     )
SELECT 
source,
words[OFFSET(0)] AS word1,
words[OFFSET(1)] AS word2,
words[OFFSET(2)] AS word3,
words[OFFSET(3)] AS word4,
words[OFFSET(4)] AS word5
FROM ds