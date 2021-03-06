USE codeup_test_db;


SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.' FROM albums WHERE name = 'Sgt.Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind.' FROM albums WHERE name = 'Nevermind';

-- SELECT name AS 'Which albums were released in the 1990s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums were released in the 1990s' AS 'Search results';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- SELECT name AS 'Which albums had less than 20 million certified sales' FROM albums WHERE sales < 20;

SELECT 'Which albums had less than 20 million certified sales' AS 'Search results';
SELECT * FROM albums WHERE sales < 20;


-- All the albums with a genre of "Rock".
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- The query only shows results for the exact match of "Rock" or "rock".

-- SELECT name AS 'All the albums with a genre of "Rock".' FROM albums WHERE genre = 'Rock';
SELECT 'All the albums with a genre of "Rock".' AS 'Search results';
SELECT * FROM albums WHERE genre = 'Rock';