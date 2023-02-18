CREATE TABLE files
(
    id INT GENERATED BY DEFAULT AS identity,
    hash         text    NOT NULL,
    originalname text    NOT NULL,
    filename     text    NOT NULL,
    size         integer not null,
    date         integer not null,
    ip           text    null
);

CREATE TABLE blacklist
(
    id           INT GENERATED BY DEFAULT AS identity,
    hash         text    NOT NULL,
    originalname text    NULL,
    time         integer null,
    ip           text    null
);

CREATE TABLE ratelimit
(
    id INT GENERATED BY DEFAULT AS identity,
    iphash text    NOT NULL,
    files  integer not null,
    time   integer not null
);

CREATE TABLE accounts
(
    id INT GENERATED BY DEFAULT AS identity,
    email text    NOT NULL,
    pass  text not null,
    level   integer not null
);