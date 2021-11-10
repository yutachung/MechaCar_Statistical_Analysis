#load libraries
library(tidyverse)

#Deliverable 1
MechaCarDF <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar_linear_model <- lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCarDF)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCarDF))

#Deliverable 2
Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups='drop')
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups='drop')

#Deliverable 3
t.test(Suspension_table$PSI,mu=1500)
t.test(subset(Suspension_table,Manufacturing_Lot=='Lot1')$PSI,mu=1500)
t.test(subset(Suspension_table,Manufacturing_Lot=='Lot2')$PSI,mu=1500)
t.test(subset(Suspension_table,Manufacturing_Lot=='Lot3')$PSI,mu=1500)
