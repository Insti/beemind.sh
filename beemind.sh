#!/bin/sh

# Get your auth token from: https://www.beeminder.com/api/v1/auth_token.json
# It will look something like: AUTH_TOKEN='1bCd5FghijklMnoPqk20'
AUTH_TOKEN='PutRealTokenHere'

# Goal slug.
# This will be the last section of your goal url.
# https://www.beeminder.com/username/goals/slug
GOAL='slug'

# Value to submit.
# Add a command inside the $( )
# In this example: I'm counting the words in my novel and piping through awk 
#  to only include the wordcount and ignore the filename.
VALUE=$(wc -w novel.txt | awk '{print $1}')

# Add a comment with the submitted data.
DATE=`/bin/date +'%Y%m%d %H%M%S %z %Z'`
COMMENT="AutoData submitted $DATE"

################
# Submit the data
# You shouldn't need to change anything below here.
################

URL="https://www.beeminder.com/api/v1/users/me/goals/$GOAL/datapoints.json"
CURL=/usr/bin/curl

$CURL --data "auth_token=$AUTH_TOKEN&value=$VALUE" --data-urlencode "comment=$COMMENT" $URL 

