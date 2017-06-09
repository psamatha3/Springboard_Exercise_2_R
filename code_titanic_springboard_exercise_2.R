titanic_original$embarked <- sapply(titanic_original$embarked , function(type){ifelse(is.null(type),"S",type)})

age_mean <- mean(titanic_original$age, na.rm=TRUE)

titanic_original$age <- sapply(titanic_original$age , function(x){ifelse(is.na(x),age_mean,x)})

titanic_original$boat <- sapply(titanic_original$boat , function(x){ifelse(is.na(x),"None",x)})

titanic_original$has_cabin_number <- sapply(titanic_original$cabin, function(x){ ifelse (is.na(x),0,1)})

titanic_clean <- data.frame(titanic_original)

write.csv(titanic_clean, file = "titanic_clean.csv")