#Provided with a vector below
assignment2<- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#Function below returns the calculated mean based on the vector given above
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
#Here we are calling the function and passing the vector as the paramater
myMean(assignment2)
#[1] 19.25 is the output given by calling myMean(assignment2)
#The above method works because no errors were made in the formulation to calculate the mean, which is just sum/length.
#And we also passed the vector appropriately while calling for the function.
