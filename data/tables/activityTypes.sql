-- Author: Nicholas Davis
-- Description: Creates the activity_types table used to track different kinds of activity types in KeepMe

CREATE TABLE keepme.activity_types (
    id                  SERIAL      PRIMARY KEY,
    activity_name       TEXT        UNIQUE NOT NULL,
    class               TEXT        NOT NULL,
    created_by          TEXT        NOT NULL,
    created_on          TIMESTAMP   DEFAULT NOW(),
    changed_by          TEXT        NOT NULL,
    changed_on          TIMESTAMP   DEFAULT NOW()
);

COMMENT ON TABLE keepme.activity_types IS 'A table of different activity types (e.g. yoga, weightlifting, etc)';
COMMENT ON COLUMN activity_types.id IS 'Activity type id (PK)';
COMMENT ON COLUMN activity_types.activity_name IS 'Name of activity';
COMMENT ON COLUMN activity_types.class IS 'Class of activity (Cardio, stretch, sport, etc)';