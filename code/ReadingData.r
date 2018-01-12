library(readr)
tomato <- read_csv('data/TomatoFirst.csv')
tomato <- read_csv('https://www.jaredlander.com/data/TomatoFirst.csv')

tomato

library(readxl)

wineXL <- read_excel('data/ExcelExample.xlsx', sheet='Wine')
wineXL
excel_sheets('data/ExcelExample.xlsx')

acsXL <- read_excel('data/ExcelExample.xlsx', sheet=3)
acsXL

library(RSQLite)

drv <- dbDriver('SQLite')
class(drv)

con <- dbConnect(drv, 'data/diamonds.db')
class(con)

dbListTables(con)
dbListFields(con, name='diamonds')

diamondsTable <- dbGetQuery(con,
                            'SELECT * FROM diamonds',
                            stringsAsFactors=FALSE)
head(diamondsTable)
