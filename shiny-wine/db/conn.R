library(DBI)

readRenviron("../.env")

db <- Sys.getenv("POSTGRES_DB")
db_host <- Sys.getenv("POSTGRES_HOST")
db_user <- Sys.getenv("POSTGRES_USER")
db_pass <- Sys.getenv("POSTGRES_PASSWORD")
db_port <- "5431"

conn <- dbConnect(
    RPostgres::Postgres(),
    dbname = db,
    host = db_host,
    port = db_port,
    user = db_user,
    password = db_pass
)
