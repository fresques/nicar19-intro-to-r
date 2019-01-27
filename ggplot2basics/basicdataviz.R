########################################
##   Basic Data Visualization in R    ##
##    Sandhya Kambhampati  			  ##
##     @sandhya__k                    ##
########################################

#Basic Data Visualization in R.  

#In this class, we'll go through the basic data visualization functions of R.

#Things we'll cover in this class:
#1. Overview of graphics
#2. Plotting your data 

#############################
## 1. Overview of graphics ##
############################

#Let's talk charts. Can you name some common graphs?

#Here's a few: 
#line graph, bar graph, scatter plot, pie charts 

#For this class, we're going to use the 'graphics' package. We're going to cover a few basic ways of plotting your data. 

#These are the graphics types we will be covering today. 

#1. Bar and column charts: 'barplot'
#3. Time series data: 'plot'
#4. Pie chart: 'pie'

#############################
## 2. Plotting your data  ##
############################

#1. Bar and column charts: 'barplot'

#We're going to start with the basic 'barplot()' command

#First, let's get a vector of numbers and count them. 
books <- c(1,2,5,6,7,8,9,4,4,4,4,5,6,7,2,5)

#Now, let's count them, using the 'table()' command 
bookcount <- table(books)

#Look at the data 
View(bookcount)

#Let's plot this
barplot(bookcount)

#What does this tell us? Is the data in a good format to graph?

#Let's label this bar plot
barplot (bookcount,legend=TRUE)

#2. Time series data: 'plot'
 
#We're going to use the built in dataset 'UKDriverDeaths'
#First we need to view it
View(UKDriverDeaths)

#Let's plot the data 
plot(UKDriverDeaths)

#What does this tell us? 

#Now, let's try using quick plot (which is part of ggplot2) and make things easier to understand. 

#First install ggplot2 and load it
install.packages('ggplot2')
library('ggplot2')

#Make a dataframe 
data(Seatbelts)
s <- as.data.frame(Seatbelts)

#Let's look at that data 
View(s)

#Add in time-series data 
ts <- data.frame(Year=floor(time(Seatbelts)),
                 Month=factor(cycle(Seatbelts),
                              labels=month.abb), Seatbelts)

#Now, let's plot the data, using the basic plotting function of ggplot2. 
qplot( data = ts,x= Year,y= DriversKilled, main= "Drivers Killed by Year")

#What does this show us that's diffent from using the base R graphics functions?

#3. Pie chart: 'pie'

#I'd recommend using bar or dot graphs over pie charts, however, here's one example. 

#Let's plot some data using the built-in dataset from R 
View(iris)

# Pie Chart from data frame with Appended Sample Sizes
irisdata <- table(iris$Species)
lbls <- paste(names(irisdata), "\n", irisdata, sep="")
pie(irisdata, labels = lbls, 
    main="Pie Chart of Species")

#Let's explore some other datasets. Spend some time using the built-in data to plot some data and find some stories 

