library(httr)
library(jsonlite)
# Add httr & jsonlite library
# httr, httpuv & jsonlite need to be installed first

# myapp contains the authentication info: app name, key and secret
myapp <- oauth_app("github", key = "95eb814665eaf227b055", secret = "eff53125e37ee24df31b91ee3635f4ce8352e011")

# initiate the authentication
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
# Waiting for authentication in browser...
# Press Esc/Ctrl + C to abort
# Authentication complete.

# Config the token
gtoken <- config(token = github_token)

# Get from the API that question provides
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)

# Terminate the link
stop_for_status(req)

# Assgin content of req to json1
json1 <- content(req)

# Create json2 as dataframe from jsonlite function
json2 = jsonlite::fromJSON(toJSON(json1))

# Get the size of json2
ncol(json2)
nrow(json2)

# List down all the name of the repos
json2[,2]

# List down first row, identify the column "created_at"
 json2[1,]

# Display repo name and created time
list(json2[7,2], json2[7,]$created_at)