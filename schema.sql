CREATE TABLE alert (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	host_id INTEGER,
	user_groups TEXT NOT NULL,
	priority INTEGER,
	title TEXT NOT NULL,
	message TEXT NOT NULL,
	date DATETIME NOT NULL
);

CREATE TABLE host (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	name TEXT NOT NULL,
	address TEXT NOT NULL,
	enabled BOOLEAN NOT NULL,
	added  DATETIME NOT NULL
);

CREATE TABLE notification (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	from_alert INTEGER REFERENCES alert(id),
	recepients TEXT NOT NULL,
	date  DATETIME NOT NULL
);

CREATE TABLE user (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	login TEXT NOT NULL,
	email TEXT NOT NULL,
	password TEXT NOT NULL,
	added  DATETIME NOT NULL
);

CREATE TABLE usergroup (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	name TEXT NOT NULL,
	email TEXT NOT NULL,
	added  DATETIME NOT NULL
);