#This is called the editor window
# hash symbol means comments (for R it simply skips the lines which starts
#with hash symbol)
# console window shows the outputsand can also be used to write some
# quick codes
# shift+ctrl+c for comment and de-comment
# Environment in R is collection of object that are created by developer
# objects can be of different types- data types
# Hit ctrl+Enter to run a line/selected piece of code
# ZOOM in ctrl ++
# print function
print("Hello IPBA b17")
paste("Hello IPBA B17.", "Welcome to intro to R session")
sep= ">>>"
paste("Hello IPBA B17.","Welcome to intro to R session" , sep=">>")
#Arithmetic operators in R
# +X
print(1+1)
print("1+1")
# Arithmetic operators in R
# + x
# - X
# x+y
# x - y
# x * y
# x / y
# x ^ y
# x %% y   x mod y - remainder part after division (also known as mod)
# x %/% y        Integer part of the division

2+2
2-2
4*2
4/2
4%%2
10%%3
10%/%3


# Logical operators in R
# ! - NOT
# & -And
# | -Or

# Conditional operators in R
# output of conditional logics will always be boolean (TRUE/FALSE)
# TRUE==1, FALSE ==0
# == (check equality)
# >= (gte)
# > (gt)
# <= (lte)
# < (lt)

2==2
# ! = (not equal to)
3>5
2==2 & 3>5 #  WITH AND condition both sides have to be true 
# for the result to be true

2==2 | 3>5 # WITH OR condition either of sides have to be true for the 
# result to be true

# data ----class = 10 & score >=80

# other important operators
# :    - for sequence
# $    - indexing(the 'element name' operator)
# = or <-    -assignment
# ~        - model formulae
# 



# Excercise -get sum of 
# a) 1 to 5
1+2+3+4+5


# Excersise  - get sum of
# b) 1 to 1000
sum(1,1000)
sum(1:1000)
1:6
# for sequence of odd number and the even number
seq(from =2, to =100, by =5)
sum(seq(from=2, to =100, by =5))
# ?"%%" - this will give the help section

# other mathematical functions in R -
# sqrt(x) ,exp(x),log(x),log(x,n) -log of x to base n
# log10(x) - log base 10, factorial(x),abs(x)
# floor(x) - greatest int < X
# ceiling(x) -smallest int > x
# statistical functions in R -
# Mean,min , max , N , sd, quantile, percentile
log(1000)
log(1000, base = 10)


# Excercise - find mean of these numbers 1,2,3,4,3,2,1

#  if something run does not mean that it has to be  right

#  please understand how the mean fn is working

# mean (1,2,3,4,3,2,1)/7 is not working because mean (x, ....) 
#  x needs to created as an object , aprt from the first number rest everything
#  is no being considered
x=c(1,2,3,4,3,2,1)


mean(x)
 

mean(c(1,2,3,4,3,2,1))  
# -no need to create object

#  Assignment operator
# <- or = is used as assignment operator in R
# Assign a value of 5 to an object P. Print the value P
# Items in R are stored as objects

p=5
p


paste ("the value of p is :"  , p)

# say a store sells shirts and tess.
# create 2 objects to capture unit sales for day 1 -
# 60 for shirts and 40 for tees

sales_shirt<- 60
sales_tees<- 40

# Excercise- Find total sales and save  it in sales_total object

Total_sale <- sales_shirt + sales_tees

# The operation like this is like creating and object not printing the value 
#in the console, hence the value 100 is not in the console
Total_sale

#  Day 2 sales are 70 and 20 resp. for shirts and tees
#  Replace the day 1 values with day 2 in the objects


sales_shirt<- 70
sales_tees<- 20

Total_sales_d2 <- sales_shirt + sales_tees

# overwriting can change data types as well of the object

#to check the class of the object we need to use class function

class(x)
# overwriting can change data types as well of the object

p="5"

# character are usually presented in single quotes or double quotes

class(p)

#  rm function is used to remove the object

class(Total_sales_d2)
ls()
# rm(list=ls()   this function is used to remove all the objects
# from the environment

# How to create a vector?
# It consists of either numbers, strings, or logical values
# but not all of them together.
# it contains only one type of class.
# Type of vector : class of the variables 
# (Integer, character, logical)


# create a numeric vector xNum having 1 element of value 5

xNum <- 5

# Now create a char vector xChar of 4 elements 1,2,-5 and 6

Xchar = c(1,2,-5,6)

Xchar = c("1","2","-5","6")  

XChar1 = c("1", 2, -5,6)

# Hierarchy of data types
#  -char > Numeric > Logical

# Missing values in Data

#  "NA" in R means missing
salary=c(50000,40000,NA,NA,6000)
length(salary)

# for removing the missing value from the data and adding

sum(salary, na.rm=TRUE)

mean(salary, na.rm=TRUE)

#  Arithmetic operations on vectors

sales <- c(10,12,15)
cost <- c(5,6,7)
profit <- sales-cost

profit

#  If NA will come in place 

sales <- c(10,12,15)
cost <- c(5,NA,7)
profit <- sales-cost

profit

# If extra value will be there in the data

sales <- c(10,12,15)
cost <- c(5,NA,7,1)
profit <- sales-cost

profit

sales <- c(10,12,15,1)
cost <- c(5,NA,7)
profit <- sales-cost

profit

# How do i check if at all missing values exist in my data?
# And how many of them are there?

salary <- c(2000,3000,NA,NA,4000,NA,5000)

is.na(NA)

is.na(salary)

sal_mis <- is.na(salary)

sum(sal_mis)

sum(TRUE,FALSE,TRUE)

sum(is.na(salary))

# say I have 2 numeric vectors with score of 2 players in 5 ODIs

Player1 <- c(24,51,45,70,19)
Player2 <- c(34,72,11,70,56)
  
 # Excercise - Get the number of matches in which player1 scored half 


# Traversing a vector
# Searching with referencing within vectors

brand<-c("Nike","Adidas","sketchers","puma","NewBalance")
brand

# Get brand at position 1
brand[1]
brand[-1]

brand[length(brand)]

brand<-c("Nike","Adidas","sketchers","puma","NewBalance")

brand[length(brand)]
length(brand)

brand[-5]

# find brands at position 2 and 4?

brand[c(2,4)]
brand[1:4]

# Dataframes ---- (2D)
# It can have multiple Data Types(DT)
# However each column has to have same DT

# Creation of the Matrix

matrix1 <- matrix(c(1,2,3,1,5,7), nrow=4 , ncol =3)
matrix1

matrix1[4,]

matrix1[2,2]

seq(1:100)

product=c("Bag","shoes","belt","belt")

total_price=c(500,1000,150,10000)

color=c("blue","red","red","blue")

quantity=c(5,2,3,4)

# create a dataframe

product_details <- data.frame(product,total_price,color,quantity,
                              stringsAsFactors = TRUE)
?data.frame

as.factor(product_details$color)
#  This is showing the (as.factor(product_details$color)
# change in the console not in the environment, for showing the same
# change we have to do 

product_details$color <- as.factor(product_details$color)

product_details$color  

product_details$color[3]

class(product_details)["color"]

table(product_details$color)

#  4th type of data structure is LISTS -- Recurrsive Vectors
# combination/ collection of data points / data structure

my_list <- list(name = c("Robert","Emma"), age = c (65 ,54, 43),
                retired =c(TRUE,FALSE) ,product_details)

my_list

my_list$age

 my_list[[4]] # Double indexer brakets
 
 my_list[[4]]["total_price"]

 # Data Manipulation
 
 setwd("C:\\ipba-ML\\18-11-2023_python")
 #backward slash is considered as the skip character
 
 getwd()

  # Importing of the dataset
 
 df_train <- read.csv("df_train.csv", header = TRUE, stringsAsFactors = TRUE)

 setwd("C:\\ipba-ML\\16-07-23 R")
 getwd()
 
 oj <- read.csv("oj.csv", header = TRUE, stringsAsFactors = TRUE)

 View(oj)  
 
 head(oj, n=10)
 # to view top 10 commands
 
 oj[10:15,]
 # to view the details of the data between 10 to 15
 
 tail(oj)
# to view bottom 6 details of the dataset 
 
 str(oj)
 # it gives the overall structure of oj
 
 head(oj$price,10)
 
 head(oj["price"],10)

 dim(oj) 

 dim(oj)[1]  
 #  to access the row
 
 names(oj)
 # to give the name of the coloumn 

 
 
 colSums(is.na(oj))

 
 sum(is.na(oj)) 
sum(is.na(oj$feat)) 
