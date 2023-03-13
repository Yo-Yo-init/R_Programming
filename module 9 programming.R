library(ggplot2)


data(ShipAccidents, package = "AER")

ggplot(ShipAccidents, aes(x = type, y = incidents)) +
  geom_bar(stat = "identity") +
  labs(x = "Ship Type", y = "Number of Incidents", title = "Bar Chart of Incidents by Ship Type")

ggplot(ShipAccidents, aes(x = operation, y = incidents, group = type, color = type)) +
  geom_line() +
  labs(x = "Period of Operation", y = "Number of Incidents", title = "Line Chart of Incidents by Period of Operation")

ggplot(ShipAccidents, aes(x = construction, y = incidents)) +
  geom_boxplot() +
  labs(x = "Period of Construction", y = "Number of Incidents", title = "Box Plot of Incidents by Period of Construction")
