# 1. a.34
#    b.length(age)
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
length(age)


# 2.
ageReciprocal <- 1/age
#[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704
#[6] 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276
#[11] 0.02857143 0.03225806 0.03703704 0.04545455 0.02702703
#[16] 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816
#[21] 0.02000000 0.02702703 0.02173913 0.04000000 0.05882353
#[26] 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784
#[31] 0.02857143 0.04166667 0.03030303 0.02439024


# 3.The new age merged 2 object and has a 0 integer in between
new_age <- c(age, 0, age)


# 4. sort(age, decreasing = F)
sort(age, decreasing = F)
#[1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35
#[19] 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57


# 5.minimum = 17, maximum = 57
min(age)
max(age)


# 6. a. 12
#    b.length(data)
length(data)


# 7.The value of every number in data object doubles
data * 2 


# 8.1 integer <- (1:100)
integer <- (1:100)
seq (integer)


# 8.2 number <- (20:60)
number <- (20:60)
seq(number)


#8.3 40
mean(number)


#8.4 Sum = 2911
sum(51:91)


#8.5 
integers (1:1000)
#a. 143
#b. new_integers <- c(integer, number, 40, 2911)
#   length(new_integers)
#[1] 143
#c. 10


#9. 
filtered_integers <- Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, 1:100)
#[1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38
#[19] 41 43 44 46 47 52 53 58 59 61 62 64 67 68 71 73 74 76
#[37] 79 82 83 86 88 89 92 94 97



#10. 
backward_integers <- (1:100)
sort(backward_integers, decreasing = T)
#[1] 100  99  98  97  96  95  94  93  92  91  90  89  88
#[14]  87  86  85  84  83  82  81  80  79  78  77  76  75
#[27]  74  73  72  71  70  69  68  67  66  65  64  63  62
#[40]  61  60  59  58  57  56  55  54  53  52  51  50  49
#[53]  48  47  46  45  44  43  42  41  40  39  38  37  36
#[66]  35  34  33  32  31  30  29  28  27  26  25  24  23
#[79]  22  21  20  19  18  17  16  15  14  13  12  11  10
#[92]   9   8   7   6   5   4   3   2   1


#11. 

filteredNaturalNumbers <- Filter(function(i) { i %% 3 == 0 || i %% 5 == 0 }, 1:24)
#[1]  3  5  6  9 10 12 15 18 20 21 24
sumOfNaturalNumbers <- sum(filteredNaturalNumbers)
#[1] 143

#12. 
{ x <- 0+ x + 5 + }
#Error: unexpected '}' in "{ x <- 0+ x + 5 + }
# The expression is incomplete there it won't run
# or display anything.


#13. element_2 = 86, element_3 = 92
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
element_2 <- score[2]
element_3 <- score[3]


#14. The NA value change. The inputted number (-999) 
#    overwrites the NA. 
a = c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")
#[1]    1    2 -999    4 -999    6    7


#15. Output: Input your name: Andrey Sumadic
name = readline(prompt="Input your name: ")
#    Output: Input your age: 19
age = readline(prompt="Input your age: ")
#    Output:[1] "My name is Andrey Sumadic and I am 19 years old."
print(paste("My name is",name, "and I am",age ,"years old."))
#    Output: [1] "R version 4.3.1 (2023-06-16)"
print(R.version.string)

