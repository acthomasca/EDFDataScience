
agentlist <- readLines ("agents.html")

agentlist <- readLines ("http://www.nhlpa.com/inside-nhlpa/certified-player-agents/find-an-agent?ln=M")


agentlist[1:10]

grep ("[A-z0-9\\.]+@[A-z0-9\\.]", agentlist, value=TRUE)
unlist(regmatches(agentlist, gregexpr ("[A-z0-9\\.]+@[A-z0-9\\.]+", agentlist)))

## Phone numbers
unlist(regmatches(agentlist, gregexpr ("[0-9]{3}-[0-9]{3}-[0-9]{4}", agentlist)))
unlist(regmatches(agentlist, gregexpr ("\\([0-9]{3}\\) [0-9]{3}-[0-9]{4}", agentlist)))


grep ('\\<ul class="left"',
      agentlist)
grep ('/ul',
      agentlist)

agentlist2 <- paste(agentlist, collapse="")
regmatches (agentlist2, gregexpr('\\<ul class="left".*/ul', agentlist2))
regmatches (agentlist2, gregexpr('\\<ul class="left".*?/ul', agentlist2))


grep ('\\<ul class\\=\\"left\\"\\>',
      agentlist)



