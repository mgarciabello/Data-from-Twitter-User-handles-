Data-from-Twitter-User-handles-
Mariangelica Garcia 2021-05-03

This package consists of some code that will let the user visualize data using the variables that are included in the code. Any Twitter user handle can be incorporated in order to visualize its data.

Install
Install from GitHub with the following code:

if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("mgarciabello
/
Data-from-Twitter-User-handles-")
To properly use this package the user has to have access to [rtweet]. As a result, each user must have previously acquired authentication from Twitter and instructions to do that can be found here.

Usage
There is one function currently live for Data-from-Twitter-User-handles-.

Its first argument creates a function where the user can change the variables to any Twitter-User-Handle.

## load Data-from-Twitter-User-handles-
library(Data-from-Twitter-User-handles-)

## Result is percentage - in this case, 15.05155%.
```

This process takes some time, as botscan is currently built on a loop of
BotOMeter. Efforts to mainstream this process are set as future goals. A
standard pull of tweets via <code>botscan</code> processes approximately
11 to 12 accounts per minute in addition to the initial tweet streaming.

Twitter rate limits cap the number of Search results returned to 18,000
every 15 minutes. Thus, excessive use of <code>botscan</code> in a short
amount of time may result in a warning and inability to pull results. In
this event, simply wait 15 minutes and try again. In an effort to avoid
the Twitter rate limit cap, <code>botscan</code> defaults to returning
1000 results when <code>search = TRUE</code>.
