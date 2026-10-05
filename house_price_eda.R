# ==========================================
# House Price Prediction - EDA & Visualization
# ==========================================

# 1. Load Dataset
data <- read.csv("House Price Prediction Dataset.csv")

# 2. View First Rows
head(data)

# 3. Dataset Dimensions
dim(data)

# 4. Dataset Structure
str(data)

# 5. Summary Statistics
summary(data)

# 6. Missing Values
colSums(is.na(data))

# 7. Duplicate Rows
sum(duplicated(data))

# 8. Unique Values of Categorical Variables
unique(data$Location)
unique(data$Condition)
unique(data$Garage)

# 9. Frequency of Location
table(data$Location)

# 10. Frequency of Condition
table(data$Condition)

# 11. Frequency of Garage
table(data$Garage)

# 12. Price Statistics
mean(data$Price)
median(data$Price)
min(data$Price)
max(data$Price)
sd(data$Price)

# 13. Range Checks
range(data$Area)
range(data$Bedrooms)
range(data$Bathrooms)
range(data$Floors)
range(data$YearBuilt)
range(data$Price)

# 14. Median Price by Location
aggregate(Price ~ Location, data = data, median)

# 15. Mean Price by Location
aggregate(Price ~ Location, data = data, mean)

# ==========================================
# Visualizations
# ==========================================

# Histogram - Price Distribution
png("price_distribution.png", width = 800, height = 600)

hist(data$Price,
     main = "Distribution of House Prices",
     xlab = "House Price",
     ylab = "Frequency")

dev.off()

# Scatter Plot - Area vs Price
plot(data$Area, data$Price,
     main = "Area vs House Price",
     xlab = "Area",
     ylab = "House Price",
     pch = 19)

# Box Plot - Price by Location
boxplot(Price ~ Location,
        data = data,
        main = "House Price by Location",
        xlab = "Location",
        ylab = "House Price")

