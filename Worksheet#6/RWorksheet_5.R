
#1. 
fertilizer_levels <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10) 
df <- data.frame(fertilizer_levels)
library(Hmisc)
describe(df)   
summary(df)


#2.
df$fertilizer_levels <- factor(df$fertilizer_levels, ordered = TRUE,   
                               levels = c(10, 20, 50))

df$fertilizer_levels


# 3.
exercise <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l") 
exercise_levels <- factor(exercise, 
                          levels = c("n", "l", "i"),
                          ordered = TRUE)
str(exercise_levels)

# 4.
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", 
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw", 
           "vic", "vic", "act")
state_factor <- factor(state)
str(state_factor)
#State_factor is now a factor variable with 7 levels: act, nsw, nt, qld, sa, tas, vic
#Applying the factor() function organized the state codes 
#into a factor variable with known levels for further analysis.


# 5. 
state_factor <- factor(state) 
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incmeans <- tapply(incomes, state_factor, mean)
incmeans

#We can interpret that on average, tax accountants from Tasmania (TAS) earned the highest mean income of $60,000, 
#while those from the Australian Capital Territory (ACT) earned the lowest mean of $45,500.

#6. 
stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, state_factor, stdError)
incster

#The standard error for Tasmania is 0, since there was no variation in the single observation.
#The highest standard error is for the Northern Territory (NT), at $7.0711, indicating higher variation around the mean for that state.
#The lowest non-zero standard error is for South Australia (SA), at $5.6568, showing least variation around the mean income for that state grouping.


#7. 
data("Titanic")
titanic_df <- as.data.frame(Titanic)
survived_df <- subset(titanic_df, Survived == "Yes")
not_survived_df <- subset(titanic_df, Survived == "No")
head(survived_df)
head(not_survived_df)

#8.
library(readr)
library(dplyr)
library(Hmisc)

# Corrected file path with quotes
breast_cancer_data <- read_csv("/cloud/project/Worksheet#6/breastcancer_wisconsin.csv")

str(breast_cancer_data)

se_mean_clump_thickness <- sd(breast_cancer_data$Clump.Thickness) / sqrt(length(breast_cancer_data$Clump.Thickness))

cv_marginal_adhesion <- sd(breast_cancer_data$Marginal.Adhesion) / mean(breast_cancer_data$Marginal.Adhesion) * 100

null_values_bare_nuclei <- sum(is.na(breast_cancer_data$Bare.Nuclei))

mean_bland_chromatin <- mean(breast_cancer_data$Bland.Chromatin)
sd_bland_chromatin <- sd(breast_cancer_data$Bland.Chromatin)

conf_interval_uniformity_cell_shape <- Hmisc::smean.cl.normal(breast_cancer_data$Uniformity.of.Cell.Shape)$conf.int

num_attributes <- ncol(breast_cancer_data)

percentage_malignant <- (sum(breast_cancer_data$Class == "Malignant") / nrow(breast_cancer_data)) * 100

cat("Standard error of the mean for Clump Thickness:", se_mean_clump_thickness, "\n")
cat("Coefficient of variability for Marginal Adhesion:", cv_marginal_adhesion, "%\n")
cat("Number of null values of Bare Nuclei:", null_values_bare_nuclei, "\n")
cat("Mean for Bland Chromatin:", mean_bland_chromatin, "\n")
cat("Standard deviation for Bland Chromatin:", sd_bland_chromatin, "\n")
cat("Confidence interval of the mean for Uniformity of Cell Shape:", conf_interval_uniformity_cell_shape[1], "to", conf_interval_uniformity_cell_shape[2], "\n")
cat("Number of attributes:", num_attributes, "\n")
cat("Percentage of respondents who are malignant:", percentage_malignant, "%\n")

#9.
library("AppliedPredictiveModeling")
View(Abalone)
head(Abalone)
summary(Abalone)
