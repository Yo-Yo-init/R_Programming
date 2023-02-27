# EXAMPLE S3 CLASS


# Load the USarrests dataset

data("USArrests")

# Define a function to create an object of class 'myData'

myData <- function(data) {
  obj <- list(data = data)
  class(obj) <- "myData"
  obj
}

# Define a function to print an object of class 'myData'

print.myData <- function(obj) {
  cat("Data dimensions: ", dim(obj$data), "\n")
  cat("Data summary:\n")
  print(summary(obj$data))
}

# Create an object of class 'myData' with the USArrests dataset

myObj <- myData(USArrests)

# Test the print method

print(myObj)

# Define a generic function 'foo' that dispatches on the class 'myData'

foo <- function(obj) {
  UseMethod("foo")
}

# Define a method for 'foo' for class 'myData'

foo.myData <- function(obj) {
  cat("Data column means:\n")
  print(colMeans(obj$data))
}

# Test the 'foo' method

foo(myObj)

# EXAMPLE S4 CLASS


# Define a class 'myData' with a slot 'data'

setClass("myData", slots = list(data = "data.frame"))

# Define a function to create an object of class 'myData'

myData <- function(data) {
  obj <- new("myData", data = data)
  obj
}

# Define a generic function 'foo' that dispatches on the class 'myData'

setGeneric("foo", function(obj) {
  standardGeneric("foo")
})

# Define a method for 'foo' for class 'myData'

setMethod("foo", "myData", function(obj) {
  cat("Data column means:\n")
  print(colMeans(obj@data))
})

# Create an object of class 'myData' with the USArrests dataset

myObj <- myData(USArrests)

# Test the 'foo' method

foo(myObj)

# Change the value of the 'data' slot

slot(myObj, "data") <- USArrests[, 1:3]

# Test the 'foo' method again with updated slot values

foo(myObj)
