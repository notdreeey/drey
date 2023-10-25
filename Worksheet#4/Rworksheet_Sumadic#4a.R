1. 
#A. The vector "sHOE" has a column name shoe_size and height
#   and you can see the inputted values.
sHOE <- data.frame(
  Shoe_size = c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5, 13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0),
  Height = c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0, 77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0)
)
sHOE

#B.
Gender <- c("F", "F","F", "F", "M", "F","F","F","M","F","M","F","M","M","M","M","F","F","M","F","F","M","M","F","M","M","M","M")
SHOE <- cbind(sHOE, Gender)
SHOE

#C.
mean(SHOE$Shoe_size)
mean(SHOE$Height)

#D.Thereis a relation because you can determine the gender
#   based on their shoe size and height alone.


2.
factor_months_vector <- factor(c("March","April","January","November","January","September","October","September","November","August","January","November","November","February","May","August","July","December","August","August","September","November","February","April"))
factor_months_vector

3.
summary(factor_months_vector)

4.
  factor_data <- c("East", "West", "North")
  Frequency <- c(1, 4, 3)

new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

5.
df <- read.table(file='C:/Users/HUAWEI/OneDrive/Documents/Worksheet#4/import_march.csv', header=TRUE, sep=',')
df

6.
Input_Number <- readline(prompt = "Enter a number between 1-50: ")
if (Input_Number == 20 ){
  print("TRUE")
} else if (Input_Number < 1 && Input_Number > 50){
  print("The number selected is beyond the range of 1 to 50")
} else {
  paste(Input_Number)
}




