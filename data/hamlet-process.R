
rawtext <- readLines ("hamlet-raw.txt")

grep ("^[A-Z]*$", rawtext, value=TRUE)


