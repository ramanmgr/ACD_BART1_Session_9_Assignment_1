#1. If Z is norm (mean = 0, sd = 1)
#Find P(Z > 2.64)
1 - pnorm(2.64, mean=0, sd=1)
#[1] 0.004145301

#Find P(|Z| > 1.39)
1-(pnorm(1.39)-pnorm(-1.39))
#[1] 0.1645289

#OR With Z table 

#P(Z > 2.64)
#the probability value of z =2.64 in table is 0.9959
#so P(Z > 2.64)=1-P(z < 2.64)=1-0.9959=0.0041



#P(|Z| > 1.39)
#we can find by Z Table
#P(Z=1.39)-- 0.9177
#P(Z=-1.39)-- 0.0823

#1-(pnorm(1.39)-pnorm(-1.39))
#1-(0.9177-0.0823)
#1-0.8354
#0.1646 #answer




#2. Suppose p = the proportion of students who are admitted to the graduate school 
#of the University of California at Berkeley, and suppose that a public relation 
#officer boasts that UCB has historically had a 40% acceptance rate for its graduate 
#school. Consider the data stored in the table UCBAdmissions from 1973. 
#Assuming these observations constituted a simple random sample, 
#are they consistent with the officerâ..s claim, or do they provide evidence 
#that the acceptance rate was significantly less than 40%? 
#Use an Î± = 0.01 significance level.


#to check for whether there is consistency with the officers claim 
#or do they provide evidence that the acceptance rate was significantly 
#less than 40% thus defining the null hypo as Ho:p is equal to 0.40
#and Ha:p less than 0.40

#Ho :  p = 0.4
#Ha :  p < 0.4
#alpha = 0.01   
#Thus to find we use qnorm() function 

-qnorm(0.99)
# [1] -2.326348

#Now to find out our test statistic
newucb_data <- as.data.frame(UCBAdmissions)
View(newucb_data)
dim(newucb_data)
summary(newucb_data$Admit)
phat <- 12/(24)
t <- (phat-0.4)/sqrt(0.4*0.6/(24))
t
# [1] 1

#by calculations it is clear that our test statistic is not less than -2.326348 
#So we do not reject our null hypothesis Ho
#hence we say that the observed data are consistent with the officer's claim at alpha = 0.01(Level of Significance)


