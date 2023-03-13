library(ggplot2)
library(titanic)

df <- as.data.frame(Titanic)

ggplot(df, aes(x = Sex, y = Freq, fill = Survived)) +
  geom_bar(stat = "identity", position = "fill") +
  facet_wrap(~ Class) +
  labs(title = "Survival rate by class and sex",
       x = "Sex",
       y = "Proportion",
       fill = "Survived") +
  scale_fill_manual(values = c("No" = "red", "Yes" = "green"))
