CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    assossiated_author

    FOREIGN KEY REFERENCES
);

CREATE TABLE question_follows (
    id, INTEGER PRIMARY KEY

);


CREATE TABLE replies (
    id, INTEGER PRIMARY KEY
);


CREATE TABLE question_likes (
    id, INTEGER PRIMARY KEY
);
