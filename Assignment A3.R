campaign<-read.csv("C:\\Users\\monis\\OneDrive\\Desktop\\SCM\\Campaign Data.csv")
heart<-read.csv("C:\\Users\\monis\\OneDrive\\Desktop\\SCM\\heart (1).csv")

#--------------------------------------------------
campaign
summary(campaign)
str(campaign)
is.na(campaign)
sum(is.na(campaign))

plot_missing(campaign)

boxplot(campaign$age, campaign$duration, campaign$campaign, campaign$pdays,
        main = "Boxplot",
        names = c("Age", "duration", "campaign", "pdays"))
boxplot(campaign$previous , campaign$emp.var.rate, campaign$cons.price.idx, campaign$ cons.conf.idx,
        main = "Boxplot",
        names = c("previous ", "emp.var.rate", "cons.price.idx", " cons.conf.idx"))

#Model building

#41188 obs 70% - 28,831

campaign<-data.frame(lapply(campaign, factor))
set.seed(1234)
data_mixed<-campaign[order(runif(1:41188)),]
data_training<-campaign[1:28831,]
data_testing<-campaign[28832:200,]

model_campaign <- lm(response~ ., data = data_training[])

model_campaign
summary(model_campaign)




