-- Account
create table account
(
  id                    serial primary key,
  email                 varchar(255)                         not null,
  password              varchar(255)                         not null
);

-- Vocabulary
create table vocabulary
(
  id                    serial primary key,
  owner                 int references account (id)         not null,
  question              text                                not null,
  answer                text                                not null,
  language              varchar(255)                        not null,
  phase                 smallint                            not null default 0,
  create_time           timestamp                           NOT NULL DEFAULT current_timestamp,
  update_time           timestamp                           NOT NULL DEFAULT current_timestamp
);
