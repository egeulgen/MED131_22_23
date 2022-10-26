##################################################
## Project: Undergraduate Biostatistics 
## Script purpose: Homework 1
## Student Name:
## Student Number:
##################################################

#----Part 1 - Print -----
#First, practice how to print a value or a variable
#We will be using built-in print() method for this
#Test the following line by running it
print("car")
#Now print a number

#Now print a string containing only numbers like "123"

#Let's see what happens when you add two numbers and print it
print(10+25)
#Now let's see what happens when you do the same thing with string representation of numbers
print("10"+"25")
#It gives error, it doesn't run, to work with strings we can do 2 things here
#We can concatenate two strings or turn strings into number if they only contain numbers, then add them
#We can also concatenate two strings using paste0() or paste() method, paste fills between two strings with space or something specified
print(paste0("10","25"))
#Now try it with paste() and see the difference

#Use as.integer() method on string representation of numbers like "123", and print() it

#You can mix numbers and text or anything that can turned into string using paste, experiment with mixing numbers and strings in a paste() function, separated by commas

#----Part 2 - Variables -----
#You can name variable anything following identifier rules and assign literals or values of other variables or results of expressions using "<-"
myNumber <- 123
print(myNumber)
#assign something to a variable you name, then print it


#values assigned to variables can be called using variables, and the values fill in place of the variables in the expression
myNumber <- 5
mySecondNumber <- 10
myThirdNumber <- myNumber*mySecondNumber
print(myThirdNumber)
#You can experiment with some calculation using variables here

#----Part 3 - Logic ----
#if control structure allows us to make logical decisions on what to execute next
myNumber <- 5
if(myNumber>0){
  print("my number is positive")
}
if(myNumber<=0){
  print("my number is negative or equal to zero")
}
myNumber <- -2
if(myNumber>0){
  print("my number is positive")
}
if(myNumber<=0){
  print("my number is negative or equal to zero")
}
#else structure allows us to cover the logically opposite case,
#the not case without writing the expression for it, or using computational resources for the same logic
myNumber <- 24
if(myNumber>0){
  print("my number is positive")
}else{
  print("my number is negative")
}
myNumber <- -11
if(myNumber>0){
  print("my number is positive")
}else{
  print("my number is negative")
}
#logical expression results in a boolean value, it can be stored to be used later
myNumber <- 41
isMyNumberPositive <- myNumber>0
print(isMyNumberPositive)
if(isMyNumberPositive){
  print("my number is positive")
}else{
  print("my number is negative")
}
myNumber <- -93
isMyNumberPositive <- myNumber>0
print(isMyNumberPositive)
if(isMyNumberPositive){
  print("my number is positive")
}else{
  print("my number is negative")
}
#using modulus math we can learn remainder of a division calculation
print(8%%3)
print(11%%2)
print(18%%7)
#having modulus equal to 0 means that those number can be divided evenly
#assign a variable a number, then check whether that number is even or odd, then print even if even, odd if odd


#----Part 4 - Counting-----
#A very useful expression in programming is incrementing and decrementing
#It allows to count, to iterate, to parse...
#We can reference a variable in an expression the same line as its assignment line, and thus assign back to its place with a changed value
myNum <- 5
myNum <- myNum+7
print(myNum)
myNum <- myNum*myNum
print(myNum)
#If we do this with 1, we can count
numberOfTimesPrinted <- 0

print("hello")
numberOfTimesPrinted <- numberOfTimesPrinted + 1

print("this is easy")
numberOfTimesPrinted <- numberOfTimesPrinted + 1

print("now we will print how many times we printed")
numberOfTimesPrinted <- numberOfTimesPrinted + 1
print(numberOfTimesPrinted)
#----Part 5 - While Loop-----
#while loop again requires a logic value, a boolean, and executes what is inside if boolean is TRUE, then jumps back to beginning and check again
#if TRUE, then executes the loop again, keeps doing this till is FALSE, or forever
myNumber <- 10
while(myNumber>7){
  print("my number is bigger than 7 so im decreasing it")
  myNumber <- myNumber-1
}
print(paste("my number is now",myNumber))
#using this while structure and counting technique, print "I printed this 10 times" 10 times

#----Part 6 - 3N+1 -----
#make variable for counting, and assign 0 to it, this is called initilization
#then make a variable and assign a positive integer
#then in a while it is not 1
#check whether if it even
#if even, divide by 2, and increase count variable 1
#if odd, multiply by 3 then add 1, and increase count variable by 1
#when the number becomes 1 and gets out of the loop
#print step count


#----Part 7 - Methods/Functions/Subroutines -----
#we can group up multiple expressions and assign a name to this group and execute all the steps calling just the name of the group
#we call this a method, function or a subroutine depending on the paradigm and the language
squareThisNumber <- function(thisIsTheInputWeGiveAndItCanBeAnyVariableNameAnyIdentifier){
  # **N is simply to the power of N, exponent operator
  return(thisIsTheInputWeGiveAndItCanBeAnyVariableNameAnyIdentifier**2)
}
myNumber <- 5
print(paste("square of",myNumber,"is",squareThisNumber(myNumber)))
myNumber <- 11
print(paste("square of",myNumber,"is",squareThisNumber(myNumber)))
myNumber <- 7
print(paste("square of",myNumber,"is",squareThisNumber(myNumber)))
#Now make a function called threeN1Steps that takes a integer as input
#then returns how many steps it takes to reach 1 applying 3N+1 problem 
#from the previous part
threeN1Steps <- function(number){
  #fill here
}
print(threeN1Steps(5))
#it should print 5
#----Part 8 - Vectors ----
#We can represent arrays, a fixed group of data with a vector in R
#we can use c() method to create one
myVector <- c(1,5,2,3)
print(myVector)
#We can use length() method to learn how many elements it contains
length(myVector)
#We can access its Nth elements using square brackets
print(myVector[2])
#We can iterate over the elements using a while loop
index <- 0
while(index<length(myVector)){
  index <- index+1
  print(myVector[index])
}
#Vectors can contain other types of variables too
myStringVector <- c("I","want","a","cake","space","yes, unrelated")
#Now make variable for total sum, and initialize it with 0
#Then iterate over the vector and sum each element with the total sum and assign back to total sum
#after the loop ends, print the total sum





#----Part 9 - For Loop -----
#We can iterate over iteratable structures using "foreach" loop which is just for in R
myVector <- c(6,2,5,9,1)
totalSum <- 0
for(nameWhateverYouWantEachElementToBeCalled in myVector){ #for each namewhatever.. in myVector, do the following
  totalSum <- totalSum + nameWhateverYouWantEachElementToBeCalled
}
print(totalSum)
#Using a colon you can create a vector of values between two values
print(1:5)
print(2:7)
print(5:10)
#And giving this to for loop, we can loop as many times we spesify
#What following does is we create a vector of length 5, ranging numbers from 1 to 5, and we iterate over each element
#but we ignore the element and do something else, we could use the elements too, for example we could sum them up
for(x in 1:5){
  #We don't have to use X, we can, but we don't have to
  print("im gonna print this five times")
}
#----Part 10 - Statistical Primitives -----
#You can sort a disorganized vector in to sorted one using sort method
myVector <- c(1,65,2,6,2,8,3,22,53)
print(sort(myVector))
print(sort(myVector,decreasing = TRUE)) #Here we gave the decreasing parameter a boolean value of TRUE, we stated the parameter explicitly to assign TRUE that explicity
#Now find the minimum and maximum values manually, then print them

#There are built in method for min and max
print(min(myVector))
print(max(myVector))
#Now manually calculate the 25 and 75 percentile, mean and median of a vector of length 10


#There are built in functions for these
myVector <- 50:150
summary(myVector)
#For Quantiles/Percentiles
quantile(myVector, c(.32, .57, .98)) 
#----Part 11 - Dataframes-----
#You need to work with tabular data, lets see how to work with it
data(iris) #im loading a built-in dataset to show examples on
#following line will show the top 6 rows of the table
head(iris)
#now look at the last 6 rows
tail(iris)
#if we want to specify how many first or last rows we want to see, we can do that
head(iris,15)
#now lets check the column names
names(iris)
colnames(iris)
#now the rownames
row.names(iris)
#if we want to access a row or a column, or point in the table we can do that with square brackets
iris[1,] # first row
iris[,1] # first column
iris[,"Sepal.Length"] # column named Sepal.Length
iris$Sepal.Length #column named Sepal.Length
iris[,c("Sepal.Length","Sepal.Width")] # column sepal length and sepal width
iris[3,2] #third row, second column
#lets change third row second column to 5
iris[3,2] <- 5
print(iris[3,2])
#Now lets write this table to a file
write.table(iris,"myTableFileName.csv",sep=",")
#Now go check the file
#We can load it back to R using read.table and assign the table to a name
nameThisTable <- read.table("myTableFileName.csv",sep=",")
head(nameThisTable)
nameThisTable[3,2] # it still is 5
