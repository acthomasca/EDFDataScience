
## Twitter prep

library(twitteR)
library(dplyr)

## here are the keys I obtained. Get your own!
source ("twitter-access-keys.R")

## download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") -- this was suggested if you are running a Windows machine.
setup_twitter_oauth(consumer_key, 
                    consumer_secret, 
                    access_token, 
                    access_secret)


umich <- searchTwitter('#goblue', since="2015-10-30", until="2015-11-01", n=1000)  ##
umich2 <- rbind_all (lapply (umich, function(rr) rr$toDataFrame()))

umich3 <- searchTwitter('#goblue', since="2015-11-06", until="2015-11-08", n=1000)  ##
umich4 <- rbind_all (lapply (umich3, function(rr) rr$toDataFrame()))

save (umich2, umich4, file="umuch-primer.RData")
