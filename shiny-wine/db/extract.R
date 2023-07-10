source("db/conn.R")

lagen <- dbGetQuery(conn, "SELECT * FROM lagen")
weine <- dbGetQuery(conn, "SELECT * FROM weine")
inventar <- dbGetQuery(conn, "SELECT * FROM inventar")

write.csv(lagen, file = "db/data/lagen.csv")
write.csv(weine, file = "db/data/weine.csv")
write.csv(inventar, file = "db/data/inventar.csv")
