// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0

package game

import (
	"time"
)

type GamePlayer struct {
	ID          int64
	PlayerName  string
	PlayerLevel int32
	PlayerClass int16
	CreatedAt   time.Time
}
