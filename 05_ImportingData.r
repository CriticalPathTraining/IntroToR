# import data
customers <- read.csv("https://github.com/CriticalPathTraining/IntroToR/raw/master/SalesByCustomer.csv")

# give columns prettier names
names(customers) = c("Customer","State","Gender","Age","Sales")

# sort the data
customers <- customers[ order(customers$Age, decreasing=TRUE),  ]


florida.customers = subset(customers, State == "FL", c("Customer", "Age") )

hist(florida.customers$Age, 
     main = "Florida Customer Count by Age",
     col="lightblue", 
     border="black",
     ylab="Customer Count", 
     xlab="Customer Age",
     xlim = c(20, 100),
     breaks=50 )

