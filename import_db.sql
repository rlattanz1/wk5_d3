CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    assossiated_author_id INTEGER NOT NULL,

    FOREIGN KEY(assossiated_author_id) REFERENCES users(id)
);

-- this is a join table
CREATE TABLE question_follows (
    id, INTEGER PRIMARY KEY
    -- connects the two tables (users and questions) w/ forgn key
    question_id INTEGER NOT NULL
    user_id INTEGER NOT NULL

    -- Grab the id  and refrences the other table id
    FOREIGN KEY(question_id) REFERENCES questions(id)
    FOREIGN KEY(user_id) REFERENCES user(id)

);


CREATE TABLE replies (
    id, INTEGER PRIMARY KEY
);


CREATE TABLE question_likes (
    id, INTEGER PRIMARY KEY
);


INSERT INTO
        users (fname, lname)