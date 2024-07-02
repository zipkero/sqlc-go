package main

import (
	"context"
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"sqlc-go/db/account"
)

func main() {
	if err := run(); err != nil {
		log.Fatal(err)
	}
}

func run() error {
	ctx := context.Background()

	db, err := sql.Open("mysql", "root:1234@tcp(127.0.0.1:3306)/account")
	if err != nil {
		return err
	}

	accountDb := account.New(db)

	accountUser, err := accountDb.GetAccount(ctx, 1)
	if err != nil {
		return err
	}

	log.Println(accountUser)

	return nil
}
