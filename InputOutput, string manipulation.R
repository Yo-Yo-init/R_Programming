# read in the text file
mydata <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")

# write the data to a csv file
write.csv(mydata, "myfile.csv", row.names = TRUE)

# Compute the mean grade for each gender
mean_grade_by_gender <- tapply(mydata$Grade, mydata$Sex, mean)

# Add a new column to the dataframe with the mean grade for each gender
mydata$Grade.Average <- mean_grade_by_gender[mydata$Sex]
print(mydata)

# Filter the dataframe to include only students with "i" in their name
filtered_mydata <- subset(mydata, grepl("i", Name))
print(filtered_mydata)

# Save the filtered dataframe to a CSV file
write.csv(filtered_mydata, "students_with_i.csv", row.names = FALSE)
