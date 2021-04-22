# Create function

rtweet_graph = function(x, y){

# Get defined user's most recent tweets

  df = rtweet::get_timeline(user = x, n = y)

# Filter retweets

  df_filtered = df %>% filter(is_retweet == FALSE)

# Create visualization

  ggplot(df_filtered) +
    aes(x = created_at, y = retweet_count) +
    geom_line(size = 1L, colour = "#0c4c8a") +
    theme_minimal()
}
