USE codeup_test_db;


SELECT 'The name of all albums by Pink Floyd.' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd'

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt.Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind.' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT * FROM albums WHERE release_date = 1990;

SELECT 'Which albums had less than 20 million certified sales' AS 'Info';
SELECT * FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock".
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- The query only shows results for the exact match of "Rock"
SELECT 'All the albums with a genre of "Rock".' AS 'Info';
SELECT * FROM albums WHERE genre = 'Rock';