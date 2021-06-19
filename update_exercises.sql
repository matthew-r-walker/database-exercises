USE codeup_test_db;

SELECT 'All albums in the table.' AS 'Display';
SELECT * FROM albums;

SELECT 'All albums release before 1980.' AS 'Search results';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson.' AS 'Search results';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums;

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;
