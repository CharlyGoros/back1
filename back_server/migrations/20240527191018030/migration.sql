BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "urlFoto" text NOT NULL,
    "descr" text NOT NULL
);


--
-- MIGRATION VERSION FOR back
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('back', '20240527191018030', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240527191018030', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
