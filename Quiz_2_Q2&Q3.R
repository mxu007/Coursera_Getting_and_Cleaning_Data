# Load the sqldf library
library(sqldf)

# File URL of the csv file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

# Download the CSV file
download.file(fileUrl, destfile = "acs.csv")

# Read the CSV file
acs <- read.csv("acs.csv", header=T, sep=",")

query1 <- sqldf("select pwgtp1 from acs where AGEP < 50")
query2 <- sqldf("select pwgtp1 from acs")
query3 <- sqldf("select * from acs")
query4 <- sqldf("select * from acs where AGEP < 50")

identical(query3, query4)
# [1] FALSE


query5 <- sqldf("select distinct pwgtp1 from acs")
query6 <- sqldf("select distinct AGEP from acs")
query7 <- sqldf("select unique * from acs") 
# Error in sqliteSendQuery(con, statement, bind.data) : 
# error in statement: near "unique": syntax error
query8 <- sqldf("select unique AGEP from acs") 
# Error in sqliteSendQuery(con, statement, bind.data) : 
# error in statement: near "unique": syntax error
