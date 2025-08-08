# Load required library
library(readr)

# Load the dataset
df <- read_csv("raw_data/patient_info.csv")

# Check structure
str(df)
head(df)

# Convert columns if needed
df$age <- as.numeric(df$age)
df$gender <- as.factor(df$gender)
df$smoking <- as.character(df$smoker)

# Create binary smoking variable
df$smoking_binary <- ifelse(tolower(df$smoker) == "yes", 1, 0)

# Save cleaned dataset
write_csv(df, "clean_data/patient_info_clean.csv")

