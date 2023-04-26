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
    id INTEGER PRIMARY KEY,
    -- connects the two tables (users and questions) w/ forgn key
    question_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,

    -- Grab the id  and refrences the other table id
    FOREIGN KEY(question_id) REFERENCES questions(id)
    FOREIGN KEY(user_id) REFERENCES users(id)

);


CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    body TEXT NOT NULL,
    subject_question_id INTEGER NOT NULL,
    parent_reply_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,

    FOREIGN KEY(subject_question_id) REFERENCES questions(id)
    FOREIGN KEY(parent_reply_id) REFERENCES replies(id)
    FOREIGN KEY(user_id) REFERENCES users(id)
);


CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id)
    FOREIGN KEY(question_id) REFERENCES questions(id)
);


INSERT INTO
        users (fname, lname)
