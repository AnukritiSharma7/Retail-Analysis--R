#	Install and Load the libraries by using: library(DataExplorer)
# Exploratory Data Analysis
str(superstore)


# Data Cleaning 
# After importing the dataset, we noticed that Row ID should be numeric,
# since there is % attached to it. The value here is character. 
# We then proceeded to clean this data to the appropriate data type for a better analysis. 
superstore$Row.ID = as.numeric(gsub('%','',superstore$Row.ID))
plot_str(superstore)

# Check for Missing values before diving deep in the analysis. 
plot_missing(superstore)

# Bivariate Analysis
plot_correlation(superstore, type = 'continuous','Review.Date')

# Row ID here is essentially a Customer ID. This creates a heat map for all
# discrete categories, which is Sales, Postal Code and Row ID. This function first 
# dummifies all categories, then calculates the correlation matrix. 
# The darkest color is perfect correlation. Postal code and Row ID have a stronger relationship. 
# There exists a relationship between Sales & Postal code, Sales & Row ID.

#Categorical Variables - Barplots
plot_bar(superstore)

create_report(superstore)

