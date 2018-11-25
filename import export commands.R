# Read Data into R Environment

#CSV Files----
#Read from CSV file in PC 
??iris
iris
head(iris)
write.csv(iris, "./data/iris.csv", row.names=F) # export data tocopy into csv file csv
read1 = read.csv(file="./data/iris.csv", header = TRUE,sep = ",")# import the csv file
read1 = read.csv(file="./data/Draft Commercials.csv", header = TRUE,sep = ",")# test sample
str(read1); class(read1)# wheeevr import from csv then comes into data frame
head(read1)
read2 = read.table(file="./data/iris.csv", header = TRUE,sep = ",")
str(read2); class(read2)
head(read2)
read3 = read.delim(file="./data/iris.csv", header = TRUE,sep = ",")
str(read3) ; class(read3)
head(read3)
#difference is use of specify delimeter(read.csv takes default as comma)
#or location is different from Project Folders, or want to search for the file
read4 = read.csv(file=file.choose()) # by default chooses comma separated file and goes and finds the file by throwing a pop up to location to file
str(read4)
head(read4)


# From URL : Read CSV from Web----
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
library(data.table)
read_web2 = fread("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
head(read_web2)
class(read_web2)

#Text file from Web-----
read_txt = read.table("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.txt", header = FALSE)
head(read_txt)

#Google Sheets-----
library(gsheet)
install.packages('gsheet')# used to install the packagaes
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

# sample gsheet practise
url_gsheet = "https://docs.google.com/spreadsheets/d/1rcSWOsaGadbdMUSqjUD9kO_psQiLCsyblFstYGTQX9U/edit#gid=0"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)
# sample gsheet practice ends

#Excel----
#Create a excel file with data in 2 sheets
# first row contains variable names
library(xlsx)
df_excel1 = read.xlsx( "./data/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx( "./data/myexcel.xlsx", sheetIndex = 2)
df_excel2b