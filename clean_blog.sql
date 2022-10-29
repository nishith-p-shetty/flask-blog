-- import to SQLite by running: sqlite3.exe db.sqlite3 -init sqlite.sql

PRAGMA journal_mode = MEMORY;
PRAGMA synchronous = OFF;
PRAGMA foreign_keys = OFF;
PRAGMA ignore_check_constraints = OFF;
PRAGMA auto_vacuum = NONE;
PRAGMA secure_delete = OFF;
BEGIN TRANSACTION;

CREATE TABLE contacts (
sno INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
phone_num TEXT NOT NULL,
msg TEXT NOT NULL,
date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
email TEXT NOT NULL
);

CREATE TABLE posts (
sno INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT NOT NULL,
subtitle TEXT NOT NULL,
slug TEXT NOT NULL,
content TEXT NOT NULL,
author TEXT NOT NULL,
img_file TEXT NOT NULL,
date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMIT;

PRAGMA ignore_check_constraints = ON;
PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;
PRAGMA synchronous = NORMAL;