#1. 
#a.-5 -4 -3 -2 -1  0  1  2  3  4  5
vector_a <- -5:5
#b.1 2 3 4 5 6 7
x <- 1:7

#2. 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
vector_a <- seq(1, 3, by = 0.2)

#3 a. 22
#  b.28, 36
#  c.34 28 22 27 18 52 39 42 29 35 27 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18 
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)   

#4. a. it stored the "first" and "third" in the "elements" object.
#   b. first third 
#        3     9 
x <- c("first" = 3, "second" = 0, "third" = 9)
elements <- x[c("first", "third")]

#5. a. The second element got replaced by 0
#   b.
x <- -3:2
x[2] <- 0
x[2]

#6. 
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity_liters <- c(25, 30, 40, 50, 10, 45)
fuel_data <- data.frame(Month = month, Price_Per_Liter_PHP = price_per_liter, Purchase_Quantity_Liters = purchase_quantity_liters)

#                  OUTPUT:
# Month        Price_Per_Liter_PHP     Purchase_Quantity_Liters
#  Jan               52.50                       25
#  Feb               57.25                       30
#  March             60.00                       40
#  Apr               65.00                       50
#  May               74.25                       10
#  June              54.00                       45

# b. 59.2625
average_fuel_expenditure <- weighted.mean(fuel_data$Price_Per_Liter_PHP, fuel_data$Purchase_Quantity_Liters)
average_fuel_expenditure

#7. a. data("rivers")
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))

# b. 141.0000  83357.0000    591.1844    425.0000   243908.4086    493.8708    135.0000   3710.0000

# c. 141.0000  83357.0000    591.1844    425.0000   243908.4086    493.8708    135.0000   3710.0000
data

#8. a.
# b.
# c. 
# d.
# e.

#9. a.
hotels_vienna <- read_excel("hotels-vienna.xlsx")

# b. 24
length(hotels_vienna)

# c. 

# d. 

# e.

#10. a. "tomato"       "carrot"       "cabbage"     "broccoli"     "beans"        "potato"      "cucumber"     "bitter gourd" "corn"        "squash" 
vegetables <- c("tomato", "carrot", "cabbage", "broccoli", "beans", "potato", "cucumber", "bitter gourd", "corn", "squash")
vegetables

# b. "tomato"     "carrot"     "cabbage"    "broccoli"   "beans"      "potato"     "cucumber"   "bitter gourd" "corn"       "squash"     "mushroom"   "eggplant"
vegetables <- c("tomato", "carrot", "cabbage", "broccoli", "beans", "potato", "cucumber", "bitter gourd", "corn", "squash", "mushroom", "eggplant")

# c. it has 16 data points
# output: [1] "tomato"       "carrot"       "cabbage"     
# [4] "broccoli"     "beans"        "pea"         
# [7] "lettuce"      "onion"        "green bean"  
# [10] "potato"       "cucumber"     "bitter gourd"
# [13] "corn"         "squash"       "mushroom"    
# [16] "eggplant"  
vegetables <- c("tomato", "carrot", "cabbage", "broccoli", "beans", "pea", "lettuce", "onion", "green bean", "potato", "cucumber", "bitter gourd", "corn", "squash", "mushroom", "eggplant")
length(vegetables)

# D. 13
vegetables <- vegetables[-c(5,10,15)]
length(vegetables)





