INSERT INTO series (id, title, author_id, subgenre_id) 
VALUES (1, "series1", 1, 1), (2, "series2", 2, 2);

INSERT INTO books (id, title, year, series_id) 
VALUES (1, "book1", 1999, 1), (2, "book2", 2000, 1), (3, "book3", 2001, 1), 
(4, "book4", 1999, 2), (5, "book5", 2000, 2), (6, "book6", 2001, 2);

INSERT INTO characters (id, name, motto, species, author_id)
VALUES (1, "bob", "cool, man", "human", 1), (2, "dave", "sup", "lizard", 1), (3, "rob", "howdy", "human", 1),
(4, "megan", "all good", "human", 1), (5, "sarah", "yo", "lizard", 2), (6, "ryan", "hey", "human", 2),
(7, "jess", "wassup", "human", 2), (8, "lou", "hey hey hey", "human", 2);

INSERT INTO subgenres (id, name) VALUES (1, "subgenre1"), (2, "subgenre2");

INSERT INTO authors (id, name) VALUES (1, "author1"), (2, "author2");

-- bob (characterid 1, bookids 1,2,3) & dave (characterid2, book ids 1,2,3) in book1 book2 book3 book4 in series1
-- rob (characterid 3, books ids 1,2) & megan (characterid 4, book ids 1,2) in book1 & book2 in series1
-- jess (characterid 7, book ids 5,6,7) & lou (characterid 8, book ids 5,6,7) in book5 book6 book7 book8 in series2
-- sarah (characterid 5, book ids 5,6) & ryan (characterid 6, book ids 5,6) in book5 & book6 in series2

INSERT INTO character_books (id, character_id, book_id)
VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 2, 1), (5, 2, 2), (6, 2, 3), (7, 3, 1),
(8, 4, 1), (9, 7, 5), (10, 7, 6), (11, 7, 7), (12, 8, 5), (13, 8, 6), (14, 8, 7), 
(15, 5, 5), (16, 6, 5);