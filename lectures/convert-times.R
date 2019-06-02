
## Quick: Convert dates from the earlier Twitter format into YYYY-MM-DD

dates <- c("Oct 13", "Sep 01", "Nov 09", "Nov 13", "Dec 12")

## Way 1: gsub and dplyr

dates2 <- gsub ("([A-Z][a-z]{2}) ([0-9]{2})", 
                "2015-\\1-\\2",
                dates)

library(dplyr)
dates3 <- gsub ("Sep", "09", dates2) %>% gsub ("Oct", "10", .) %>% gsub ("Nov", "11", .) %>% gsub ("Dec", "12", .)


## Way 2: as.Date
as.Date (dates, format = "%b %d")

as.Date (dates, format = "%b %d") - 2



