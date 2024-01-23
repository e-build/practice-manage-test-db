CREATE TABLE APP_USER
(
    ID               VARCHAR(36)                 NOT NULL PRIMARY KEY,
    ACTIVE           BIT                         NOT NULL,
    DELETED          BIT                         NOT NULL,
    EMAIL            VARCHAR(255)                NOT NULL,
    INTRODUCTION     VARCHAR(255)                NULL,
    NAME             VARCHAR(255)                NULL,
    PASSWORD         VARCHAR(255)                NOT NULL,
    PROFILE_IMAGE_ID VARCHAR(36)                 NULL,
    CREATED_AT       DATETIME(6) DEFAULT (NOW()) NOT NULL,
    MODIFIED_AT      DATETIME(6) DEFAULT (NOW()) NULL,
    CONSTRAINT FK_PROFILE_IMAGE_ID
        FOREIGN KEY (PROFILE_IMAGE_ID) REFERENCES IMAGES (ID)
);

CREATE TABLE IMAGES
(
    ID                  VARCHAR(36)                            NOT NULL PRIMARY KEY,
    TYPE                ENUM ('POST', 'REPLY', 'USER_PFOFILE') NULL,
    ORIGINAL_IMAGE_SIZE BIGINT                                 NOT NULL,
    EXTENSION           VARCHAR(255)                           NOT NULL,
    ORIGINAL_IMAGE_NAME VARCHAR(255)                           NOT NULL,
    ORIGINAL_IMAGE_URL  VARCHAR(255)                           NOT NULL,
    THUMBNAIL_IMAGE_URL VARCHAR(255)                           NOT NULL,
    CREATED_AT          DATETIME(6) DEFAULT (NOW())            NOT NULL,
    MODIFIED_AT         DATETIME(6) DEFAULT (NOW())            NULL,
);
