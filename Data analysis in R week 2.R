#Operators

# Our first calculation

quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales

# Our second calculation
yearend_sales <- midyear_sales * 2

# Creating Vectors
# vector is a group of data elements of the same type, stored in a sequence
#There are six primary types of atomic vectors:
#logical, integer, double, character (which contains strings), complex, and raw
c(2.5, 48.5, 101.5)
c(1L, 5L, 15L)
c("Sara" , "Lisa" , "Anna")
c(TRUE, FALSE, TRUE)

#Determining the properties of vectors 
typeof(c("a","b"))
typeof(c(1L , 3L))

# You can determine the length of an 
#existing vector-meaning the number of elements it contains-by
#using the length() function. 
x <- c(33.5, 57.75, 120.05)
length(x)

y <- c(TRUE, TRUE, FALSE)
is.character(y)

# Naming vectors 

x <- c(1, 3, 5)

#You can use the names() function to assign a 
#different name to each element of the vector. 

names(x) <- c("a","b","c")

#Accessing a vector
x["a"]
x[2]

#Creating lists
#Lists are different from atomic vectors because their elements
#can be of any type-like dates, data frames, vectors, matrices, 
#and more. Lists can even contain other lists. 

list("a", 1L, 1.5, TRUE)
list(list(list(1 , 3, 5)))

#Determining the structure of lists 
#If you want to find out what types of elements a list contains, you can use the str() function
str(list("a", 1L, 1.5, TRUE))

z <- list(list(list(1 , 3, 5)))
str(z)

#Naming lists

list("Chicago"= 1, "New York" = 2, "Los Angeles" = 3)


#Dates and times in R
library(tidyverse)
library(lubridate)

#In R, there are three types of data that refer to an instant in time:
  
#A date ("2016-08-16")
#A time within a day ("20:11:59 UTC")
#And a date-time. This is a date plus a time ("2018-03-31 18:15:48 UTC")
#The time is given in UTC, which stands for Universal Time Coordinated, more
#commonly called Universal Coordinated Time. This is the primary standard by
#which the world regulates clocks and time.

today()
now()


#Converting from strings 
#Date/time data often comes as strings. You can convert strings 
#into dates and date-times using the tools provided by lubridate.
#These tools automatically work out the date/time format. First, 
#identify the order in which the year, month, and day appear in your dates.
#Then, arrange the letters y, m, and d in the same order. That gives you the 
#name of the lubridate function that will parse your date. For example, for 
#the date 2021-01-02 you use the order ymd:

ymd("2021-01-02")
mdy("January 2nd, 2021")
dmy("2-Jan-2021")
ymd(20170131)


#The ymd() function and its variations create dates. To create a date-time, 
#add an underscore and one or more of the letters h, m, and s (hours, minutes, seconds)
#to the name of the function:
ymd_hms("2017-01-31 20:11:59")
mdy_hm("01/31/2017 08:01")


#Switching between existing date/time objects 
as_datetime(today())
as_date(now())

# Dataframe

data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

#Matrices 
#A matrix is a two-dimensional collection of data elements. 
#This means it has both rows and columns. By contrast, a vector 
#is a one-dimensional sequence of data elements. But like vectors,
#matrices can only contain a single data type. For example, you can't
#have both logicals and numerics in a matrix. 

matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)


#Files
#Use the file.create() function to create a blank file. 
#Then, place the name and the type of the file in the parentheses
#of the function. Your file types will usually be something like .txt, .docx, or .csv.  

file.create("new_text_file.txt") 
file.create("new_word_file.docx") 
file.create("new_csv_file.csv") 

#You can delete R files using the unlink() function.
#Enter the file's name in the parentheses of the function.
unlink("some_.file.csv")

#Logical operators and conditional statements
#AND operator "&"

T&T
T&F

x <- 10
x > 3 & x < 12

x <- 20
x > 3 & x < 12


#OR operator "|"
T|T
T|F
F|F

y <- 7
y < 8 | y > 16


y <- 12
y < 8 | y > 16

#Not 
!T
!F

head(airquality)
airquality %>% filter(Solar.R > 150 & Wind > 10)

#Conditional statements 
#if statement
x <- 4
if(x > 0){
  print("x is a positive number")
}

#else and else if statement
x <- 7
if( x > 0 ) {
  print( " x is a positive number")
} else if ( x < 0 ){ 
  print( "x is a negative number")
} else {
  print(" x is zero")
}

x <- 60

x > 35 & x < 65
browseVignettes("grid")
vignette(package = "grid")


library(tidyverse)


#Tooth Growth Exploration

data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose == 0.5)
head(filtered_tg)

arrange(filtered_tg,len)

arrange(filter(ToothGrowth,dose == 0.5),len)

filtered_tg_new <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)

head(filtered_tg_new)

filtered_tg_new <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarise(mean_len = mean(len, na.rm = T), .group = "drop") 
 
filtered_tg_new

mdy("April 10, 2019")


















