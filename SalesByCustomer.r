customers <- read.csv("C:\\Demo\\IntroToR\\SalesByCustomer.csv")

names(customers) = c("Customer","State","Gender","Age","Sales Revenue")

customers <- customers[ order(customers$Age, decreasing=TRUE),  ]


florida.customer = subset(customer.sales, State == "FL", c("Customer", "Gender", "Age", "Sales Revenue") )
texas.customer = subset(customer.sales, State == "TX", c("Customer", "Gender", "Age", "Sales Revenue") )
california.customer = subset(customer.sales, State == "CA", c("Customer", "Gender", "Age", "Sales Revenue") )

rm(customers)