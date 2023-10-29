CREATE TABLE IF NOT EXISTS message
(
    id      serial       primary key,
    createdTime  timestamp    not null,
    fromUserId int not null,
    ChatId  int not null
);

CREATE TABLE IF NOT EXISTS user_last_seen
(
    id      serial       primary key,
    createdTime  timestamp    not null,
    fromUserId int not null,
    ChatId  int not null
);

CREATE TABLE IF NOT EXISTS last_message
(
    id      serial       primary key,
    ChatId  int not null,
    createdTime  timestamp    not null
);

CREATE TABLE IF NOT EXISTS chats
(
    id      serial       primary key,
    Users  integer[],
    createdTime  timestamp    not null
);

CREATE TABLE IF NOT EXISTS users
(
    id      serial       primary key,
    login    varchar(50)      not null,
    ChatIds  integer[]
);