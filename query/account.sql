-- name: DeleteAccount :exec
DELETE
FROM account.users
WHERE id = ?;

-- name: GetAccount :one
SELECT *
FROM account.users
WHERE id = ? LIMIT 1;

-- name: ListAccounts :many
SELECT *
FROM account.users
ORDER BY username;

-- name: UpdateAccount :execresult
UPDATE account.users
SET username = ?,
    password = ?
WHERE id = ?;