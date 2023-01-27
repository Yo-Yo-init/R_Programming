library(dplyr)
library(ggplot2)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

df <- tibble(Name, ABC_political_poll_results, CBS_political_poll_results)

df <- df %>% 
  mutate(Combined_poll_points = ABC_political_poll_results + CBS_political_poll_results)

df <- df %>%
  arrange(desc(Combined_poll_points))

ggplot(df, aes(x=Name, y=Combined_poll_points)) +
  geom_bar(stat="identity") +
  xlab("Candidate Name") +
  ylab("Combined Poll Results") +
  ggtitle("Combined Poll Results for Presidential Candidates")

