CREATE TABLE LIVE_STREAM_SERVER_STATUS (
    _ID SMALLINT UNIQUE,
    NAME VARCHAR(255) UNIQUE,
    PRIMARY KEY (_ID, NAME)
);

INSERT INTO LIVE_STREAM_SERVER_STATUS (
    _ID, NAME
) VALUES (
    1, 'STARTING'
);

INSERT INTO LIVE_STREAM_SERVER_STATUS (
    _ID, NAME
) VALUES (
    2, 'READY'
);

INSERT INTO LIVE_STREAM_SERVER_STATUS (
    _ID, NAME
) VALUES (
    3, 'STOPPING'
);

INSERT INTO LIVE_STREAM_SERVER_STATUS (
    _ID, NAME
) VALUES (
    4, 'INACTIVE'
);

INSERT INTO LIVE_STREAM_SERVER_STATUS (
    _ID, NAME
) VALUES (
    5, 'ERRORED'
);

CREATE TABLE LIVE_STREAM_SERVERS (
    _ID VARCHAR(255),
    USER_ID VARCHAR(255) REFERENCES LIVE_STREAM_USERS(_ID),
    SERVER_NAME VARCHAR(255),
    STREAM_NAME VARCHAR(255),
    CHANNEL_NAME VARCHAR(255) UNIQUE,
    DROPLET_ID BIGINT UNIQUE,
    IP_ADDRESS VARCHAR(255),
    STATUS SMALLINT REFERENCES LIVE_STREAM_SERVER_STATUS(_ID),
    PRIMARY KEY (_ID, USER_ID)
);
