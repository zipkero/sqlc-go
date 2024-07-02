CREATE SCHEMA IF NOT EXISTS game;

CREATE TABLE game.players
(
    id           BIGINT       NOT NULL AUTO_INCREMENT PRIMARY KEY,
    player_name  VARCHAR(255) NOT NULL,
    player_level INT          NOT NULL,
    player_class SMALLINT     NOT NULL,
    created_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);