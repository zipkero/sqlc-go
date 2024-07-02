-- name: GetPlayer :one
SELECT *
FROM game.players
WHERE id = ? LIMIT 1;

-- name: ListPlayers :many
SELECT *
FROM game.players
ORDER BY player_name;

-- name: CreatePlayer :execresult
INSERT INTO game.players (player_name, player_level, player_class)
VALUES (?, ?, ?);

-- name: UpdatePlayer :execresult
UPDATE game.players
SET player_name  = ?,
    player_level = ?,
    player_class = ?
WHERE id = ?;

-- name: DeletePlayer :exec
DELETE
FROM game.players
WHERE id = ?;