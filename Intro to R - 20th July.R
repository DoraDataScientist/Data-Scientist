#Introduction to R

#R as calculator
#Arithmetic Operations

#Sum
3+2
#Subtraction
3-2
#Multiplication
3*2
#Division
4/2
#Power
4^2
#logarithm
log(2)
#Exponential
exp(0)

#Store values in R: Variables/Vectors
#Store a numeric value
n<-5
n=6
#Store a character value
chr<-"string"
chr1='strings'
#class
class(n)
class(chr)

#How to store/assign more than one value to a variable.
#Vectors
#Numeric vector
num<-c(1,2,3,4)
num<-1:4
num

dec=c(1,2.1)
class(dec)
dec=as.integer(dec)

#character vector
character<-c('R','python','sas','tableau')
character

char<-c(1,2,3,'a')
class(char)

#Logical vectors
logical<-c(TRUE,FALSE)
class(logical)

#Length of vectors
length(character)

#Missing values in vectors
numeric<-c(1,2,9,NA)
numeric
ch<-c('a',1,NA)

#How to check missing values in vectors
is.na(numeric)
sum(is.na(numeric))

#Combine two vectors in R
new<-c(numeric,character)
new

#Indexing/slicing:In R index start with 1
#Select an element from a vector
new[3]
character[1]
new[3:5]
new[c(3,5,8)]

#Adding elements
num
c(num,5)

#Replacing elements
num[1]<-0
character[3]<-"sql"
character
character[-4]

#Data Frames in R
df<-data.frame(col1=num,col2=character)
df
#Get column names
names(df)
#Change column names
names(df)<-c("Numeric values","character values")

#Inbuilt data frame in R
iris
View(iris)
head(iris,7) 
dim(iris)
str(iris)

#What is factor variable?
#A variable which represents a group or level?

#Unique values
unique(iris$Species)

#Access elements of data frame [nrow,ncols]
names(iris)

#Select a column
iris$Petal.Length
iris[,2]
iris[,c("Species","Sepal.Width")]

#Select 5th row 3rd element
iris[5,3]

#Select first 10 rows
iris[1:10,]

#Select rows with index 5:12 from first two columns
iris[5:12,1:2]
iris[c(5,9,12),]

#Replace element in 5th row 3rd column
iris[5,3]<-0
head(iris)

#Matrices in R
m=matrix(c(1:9),ncol=3) #default arrange values in column wise
m

m1=matrix(c(1:9),ncol=3,byrow=TRUE) #arrange row wise
m1

#Add row/column names
rownames(m1)<-c("r1","r2","r3")
colnames(m1)<-c("c1","c2","c3")
m1

#Access the elements of matrix
m1[2,2]

#Lists
#You can not use dim() function on list, but you can use length().
list=list(num,new,df,iris,m1)
str(list)

#Select elements of the list
list[1]
list[[1]][c(1,3)]

#Change element names in the list
names(list)<-c("e1","e2","e3","e4","e5")
list[1]

list[[3]]
#Importing csv or tab separated files into R
setwd("D:\\Intro to R Redo\\class")
data=read.csv("Fitness.csv")
head(data)
dim(data)

data=read.csv("Fitness.csv",header=TRUE,na.string=c("9999","-","NA",0," ",""))
data

store=read.table("Store_Sales.txt",header=TRUE,sep="\t",stringsAsFactors = FALSE)
head(store)

#If we don't use the parameter stringsAsFactors then all the character variables will be converted to factors
#If you set tyhe parameter to FALSE then all the character variables will not be converted to factors

#Reading excel files into R
library(readxl)
#Load the workbook
wb=read_excel("customers.xlsx") #xlsx, xls
head(wb)

#Get sheet names in the excel
ns=excel_sheets("customers.xlsx")
length(ns)
ns

#Import the worksheet by name or number
california=read_excel("customers.xlsx", sheet = "california")
head(california)

data=read_excel("customers.xlsx",sheet=3)
head(data)

#HTML data
library(XML)
x = readHTMLTable('http://apps.saferoutesinfo.org/legislation_funding/state_apportionment.cfm')
str(x)
data=as.data.frame(x[[1]])
head(data)

#Import json file in to R
library(rjson)
json<-fromJSON(file='persondetails.json')
str(json)

#Loading
save.image(file="intro.RData")
load("intro.RData")
