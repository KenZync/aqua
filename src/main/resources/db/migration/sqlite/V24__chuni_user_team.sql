-- Table: chuni_user_data_ex
CREATE TABLE chuni_user_team
(
    id                    INTEGER,
    team_name             VARCHAR(255),
    user_id               BIGINT REFERENCES chuni_user_data (id) ON DELETE CASCADE,
    PRIMARY KEY (
                 id
        )
);
