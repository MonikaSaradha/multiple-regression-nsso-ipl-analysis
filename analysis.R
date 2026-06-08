# ----------------------------------
# Campaign Analysis (R)
# ----------------------------------

library(dplyr)
library(ggplot2)
library(caret)

# Load data
campaign <- read.csv("Campaign Data.csv")

# ----------------------------------
# Basic EDA
# ----------------------------------

summary(campaign)
str(campaign)

# Missing values
sum(is.na(campaign))

# Boxplots
boxplot(campaign$age, campaign$duration, campaign$campaign, campaign$pdays,
        main = "Boxplot",
        names = c("Age", "Duration", "Campaign", "Pdays"))

# ----------------------------------
# Train-Test Split
# ----------------------------------

set.seed(1234)

trainIndex <- createDataPartition(campaign$response, p = 0.7, list = FALSE)

data_training <- campaign[trainIndex, ]
data_testing  <- campaign[-trainIndex, ]

# ----------------------------------
# Logistic Regression Model
# ----------------------------------

model_campaign <- glm(response ~ ., data = data_training, family = binomial)

summary(model_campaign)

# Predictions
prob <- predict(model_campaign, data_testing, type = "response")
pred <- ifelse(prob > 0.5, 1, 0)

# Confusion Matrix
confusionMatrix(as.factor(pred), as.factor(data_testing$response))
