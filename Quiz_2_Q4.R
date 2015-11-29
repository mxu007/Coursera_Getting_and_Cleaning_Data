# Setup connection
con = url("http://biostat.jhsph.edu/~jleek/contact.html")

# ReadLines function
htmlCode = readLines(con)

# Close the connection
close(con)

nchar(htmlCode[10])
nchar(htmlCode[20])
nchar(htmlCode[30])
nchar(htmlCode[100])

