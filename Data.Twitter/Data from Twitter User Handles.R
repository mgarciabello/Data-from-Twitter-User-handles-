#' Data from Twitter User Handles
#'
#' Any Twitter User Handle Can Be Incorporated In Order To Visualize Its Data
#'
#' @author Mariangelica Garcia
#'
#' @param user The Twitter handle that the user will like to visualize.
#' @param n Number of tweets to return per timeline.
#'
#' @return Creates a graph that visualizes data from Twitter Handles.
#'
#' @examples
#' rtweet_graph = function(user = "Publix", n = "100")
#' rtweet_graph = function(user = "Target", n = "75")
#'
#' @export

# Create function

rtweet_graph = function(x, y){

# Get defined user's most recent tweets

  df = rtweet::get_timeline(user = x, n = y)

# Filter retweets

  df_filtered = df %>% filter(is_retweet == FALSE)

# Create visualization

  ggplot(df_filtered) +
    aes(x = created_at, y = retweet_count) +
    geom_line(size = 1L, colour = "#32a844") +
    theme_minimal()
}
