package main

import (
    "database/sql"
    "fmt"
    "os" // 20220902追加／環境変数設定のため

    _ "github.com/lib/pq"
)

type EMPLOYEE struct {
    ID     string
    NUMBER string
}

func main() {
//  db, err := sql.Open("postgres", "host=310dbs_dev port=5432 user=postgres sslmode=disable")
    db, err := sql.Open("os.Getenv(${PGSQL_ID})", "host=310dbs_dev port=5432 user=postgres sslmode=disable") // 20220902追加／環境変数設定のため

    defer db.Close()

    if err != nil {
        fmt.Println(err)
    }

    if _, err := db.Exec("CREATE TABLE employee (emp_id serial PRIMARY KEY, emp_number INTEGER);"); err != nil {
        fmt.Println(err)
    }

    // INSERT
    var empID string
    id := 4
    number := 4445
    err = db.QueryRow("INSERT INTO employee (emp_id, emp_number) VALUES($1,$2) RETURNING emp_id", id, number).Scan(&empID)

    if err != nil {
        fmt.Println(err)
    }

    fmt.Println(empID)

    // SELECT
    rows, err := db.Query("SELECT * FROM employee")

    if err != nil {
        fmt.Println(err)
    }

    var es []EMPLOYEE
    for rows.Next() {
        var e EMPLOYEE
        rows.Scan(&e.ID, &e.NUMBER)
        es = append(es, e)
    }
    fmt.Printf("%v", es)
}
