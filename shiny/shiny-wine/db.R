library(DBI)

get_db_connection <-
    function() {
        return(
            dbConnect(
                RPostgres::Postgres(),
                dbname = Sys.getenv("POSTGRES_DB"),
                host = Sys.getenv('POSTGRES_HOST'),
                port = Sys.getenv('POSTGRES_PORT'),
                user = Sys.getenv("POSTGRES_USER"),
                password = Sys.getenv("POSTGRES_PASSWORD")
            )
        )
    }

extract_data <-
    function(db_connection,
             table_names = c('lagen', 'weine', 'inventar')) {
        print(db_connection)
        tables <- lapply(table_names, function(x) {
            assign(x, dbGetQuery(db_connection, paste("SELECT * FROM", x)))
        })
        names(tables) <- table_names
        list2env(tables, envir = .GlobalEnv)
    }
