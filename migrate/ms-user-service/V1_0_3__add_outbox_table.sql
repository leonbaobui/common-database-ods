CREATE TABLE IF NOT EXISTS outbox_events (
    id                  varchar(255) not null primary key,
    ack_time            timestamp,
    root_entity_type    varchar(255),
    root_entity_id      varchar(255),
    created_time        timestamp,
    event_type          varchar(255),
    idempotency_key     varchar(255),
    key                 bytea,
    partition_id        varchar(255),
    payload             bytea not null,
    published_status    boolean,
    published_time      timestamp,
    retry_count         integer,
    topic               varchar(255) not null,
    updated_time        timestamp
);