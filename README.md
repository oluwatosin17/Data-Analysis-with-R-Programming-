# Data-Analysis-with-R-Programming-

## WEEK 1
- the data analysis process
includes six phases: ask, prepare, process,
analyze, share, and act. 

A few other advantages of R include its:

-  Popularity: R is frequently used for data analysis
- Tools: R has a convenient library of ready-to-use tools for data cleaning and analysis
- Focus: R was created with statistics in mind; data analysts can conveniently use a rich library of statistical routines
- Adaptability: R adapts well for use in both machine learning and data analysis projects
- Availability: R is an open source programming language  

 - Facet functions let us create
a separate plot for each species.

**Tips for learning programming languages**
Here are a few tips to follow when you start learning a new programming language:

- Define a practice project and use the language to help you complete it. This makes the learning process more practical and engaging.  
- Keep previous concepts and coding principles in mind. Many of these are transferable between programming languages. So, after you have learned one language, learning a second or third programming language tends to be much easier. 
- Create and keep good notes and cheat sheets in whatever format (handwritten or typed) that works best for you.
- Create an online filing system for information that you can easily access while you work in various programming environments.

- Programming helps you clarify
the steps of your analysis, saves time, and lets you easily reproduce and
share your work. Let's start with clarity. Programming languages
have specific rules and guidelines for giving
instructions to the computer.When you're telling a
computer what to do, your instructions have
to be very clear. There can't be any inconsistency in the way you write code. If there is, the code won't work. Translating your
thoughts into code forces you to figure out
exactly how to write each step of your analysis and how
all the steps fit together. It gives your analysis a level of precision that makes
it really powerful. Using a programming language for data analysis also
saves you lots of time. For example, take the process of cleaning and
transforming your data. With one line of code, you can create a separate dataset without any missing values. With another line, you can apply multiple
filters on your data. This lets you spend
less time preparing your data and more time
on the analysis itself. Finally, programming
languages make it easy to reproduce
your analysis. Data analysis is
most useful when you can reproduce your work and
share it with other people. They can double-check it and
help you solve problems. Code automatically stores
all of the steps of your analysis so
you can reproduce


- R is accessible, data-centric, open-source and has an active community of users.
- Some specific situations when you might use it for data analysis.
Here's three scenarios: reproducing your analysis, processing lots of data, and creating data visualizations


* In programming, a data structure is a format for organizing and storing data. Data structures are important to understand because you will work with them frequently when you use R for data analysis. The most common data structures in the R programming language include: 

- Vectors
- Data frames
- Matrices
- Arrays
Think of a data structure like a house that contains your data.

**Vectors**
* There are two types of vectors: **atomic vectors** and **lists.**
* A vector is a group of data elements of the same type, stored in a sequence in R. You cannot have a vector that contains both logicals and numerics. 

- There are six primary types of atomic vectors: 
  - logical, 
  - integer, 
  - double, 
  - character (which contains strings),
  -  complex,
  -   and raw. 
- The last two???complex and raw???aren???t as common in data analysis, so we will focus on the first four.
-  Together, integer and double vectors are known as numeric vectors because they both contain numbers.

**Creating vectors  **
One way to create a vector is by using the ** c() function** (called the ???combine??? function). The c() function in R combines multiple values into a vector. In R, this function is just the letter ???c??? followed by the values you want in your vector inside the parentheses, separated by a comma: c(x, y, z, ???).

For example, you can use the c() function to store numeric data in a vector. 
> c(2.5, 48.5, 101.5)
To create a vector of integers using the c() function, you must place the letter "L" directly after each number.
> c(1L, 5L, 15L)
You can also create a vector containing characters or logicals. 

> c(???Sara??? , ???Lisa??? , ???Anna???)

> c(TRUE, FALSE, TRUE)

**Tidy Verse**
- Tidyverse is actually a collection of
packages in R with a common design philosophy for data manipulation,
exploration, and visualization.

- tidyverse helps
you do everything from importing and transforming data to exploring and
visualizing it.

- there are four packages that are an essential part of the workflow for data analysts: ggplot2,
dplyr, tidyr and readr.

-  Ggplot2 is used for data visualization,
specifically plots. With ggplot2, you can create
a variety of data viz by applying different visual properties
to the data variables. 

- Tidyr is a package used for
data cleaning to make tidy data. it's data where every part of a data table or data frame
is the right type in the right place. Tidyr works with wide and
long data to make sure this happens.

- readr,
which is used for importing data. The most common function
from readr is read_csv. This will import a CSV file into R. 


- Dplyr offers a consistent set
of functions that help you complete some common
data manipulation tasks. For example, the select function
picks variables based on their names, and the filter function finds cases
where certain conditions are true. 

- Tibble works with data frames. Purrr works with functions and vectors helping make your code
easier to write and more expressive. Stringr includes functions that make
it easier to work with strings. Forcats provides tools that solve
common problems with factors.
factors store categorical data in R where the data values are limited and usually based on a finite
group like country or year. 

- a pipe is a tool in
R for expressing a sequence of
multiple operations. In other words, it
takes the output of one statement and makes it the input of the
next statement. Instead of typing out functions contained inside other functions, you could use the pipe
operator to do the same work. In programming, we
describe this as nested. Nested describes
code that performs a particular function and is contained within code that
performs a broader function. You can think of a
pipe as a way to code the phrase "and then."


- To load any dataset
already installed, we use the data function. We then add the name of the
data set, "ToothGrowth."


- tibbles. In the tidyverse,
tibbles are like streamlined data frames. They make working with data easier, but they're a little different
from standard data frames. First, tibbles never change
the data types of the inputs. They won't change your strings
to factors or anything else. You can make more changes to base data
frames, but tibbles are easier to use. This saves time because you won't
have to do as much cleaning or changing data types in tibbles. Tibbles also never change
the names of your variables, and they never create row names. Finally, tibbles make
printing in R easier. They won't accidentally overload your
console because they're automatically set to pull up only the first 10 rows and
as many columns as fit on screen. Super useful when you're working
with large sets of data.

**Tibbles**
- Tibbles are a little different from standard data frames. A data frame is a collection of columns, like a spreadsheet or a SQL table. Tibbles are like streamlined data frames that are automatically set to pull up only the first 10 rows of a dataset, and only as many columns as can fit on the screen. This is really useful when you???re working with large sets of data. Unlike data frames, tibbles never change the names of your variables, or the data types of your inputs. Overall, you can make more changes to data frames, but tibbles are easier to use. The tibble package is part of the core tidyverse. So, if you???ve already installed the tidyverse, you have what you need to start working with tibbles. 

**Creating tibbles **
as_tibble(dataframe)

**readr functions**
The goal of readr is to provide a fast and friendly way to read rectangular data. readr supports several read_ functions. Each function refers to a specific file format.

- read_csv(): comma-separated values (.csv) files
- read_tsv(): tab-separated values files
- read_delim(): general delimited files
- read_fwf(): fixed-width files
- read_table(): tabular files where columns are separated by white-space
- read_log(): web log files

- **The Skimr package**
makes summarizing data really easy and let's you
skim through it more quickly. We'll install it now. The Janitor package has
functions for cleaning data. 

- **The skim without charts**
function gives us a pretty comprehensive summary of a dataset.
**Glimpse** to get a really quick idea of
what's in this dataset. When we run this command, it'll show us a
summary of the data. 

- We can use select to specify certain columns or to exclude columns we
don't need right now.The select statement
is useful for pulling just a subset of variables
from a large dataset. The rename function makes it
easy to change column names. maybe we want all of our column names
to be in uppercase. We can use the **rename_with()**
function to do that. This will automatically make
our column names uppercase. The clean names function in
the Janitor package will automatically make sure that the column names are
unique and consistent. 


- There are compelling reasons to use both formats. But as an analyst, it is important to know how to tidy data when you need to. In R, you may have a data frame in a wide format that has several variables and conditions for each variable. It might feel a bit messy. 

- That???s where pivot_longer()comes in. As part of the tidyr package, you can use this R function to lengthen the data in a data frame by increasing the number of rows and decreasing the number of columns. Similarly, if you want to convert your data to have more columns and fewer rows, you would use the pivot_wider()function.


- In R, we can actually
quantify bias by comparing the actual outcome of our data with the
predicted outcome.  Basically, the bias function
finds the average amount that the actual outcome is greater than the
predicted outcome. It's included in the
SimDesign package.  If the model is unbiased, the outcome should be
pretty close to zero. A high result means that
your data might be biased. A good thing to know
before you analyze it

























