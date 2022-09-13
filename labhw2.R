library(ggplot2);
library(scales);
library(ggpubr);

#Question 1A/1C
data = read.csv(file="C:/Users/doria/OneDrive/Desktop/Storage/School/AppliedStatistics/zebrafish-corpseflower/data/chap03q23ZebraFishBoldness.csv", sep=",", header=T);
ggplot(data, aes(x=genotype, y=secondsAggressiveActivity, fill=genotype)) + 
  geom_boxplot(alpha=0.7) +
  labs(title="Zebrafish Aggressive Activity", 
       x="Genotype",
       y="Seconds of Aggressive Activity");

wild <- subset(data, genotype == "wild type");
mutant <- subset(data, genotype == "Spd");
IQR(wild$secondsAggressiveActivity);
IQR(mutant$secondsAggressiveActivity);

#Question 2A/B
data2 = read.csv(file="C:/Users/doria/OneDrive/Desktop/Storage/School/AppliedStatistics/zebrafish-corpseflower/data/chap04q18Corpseflowers.csv", sep=",", header=T);
mean(data2$numberOfBeetles)
sd(data2$numberOfBeetles)

standard_error <- function(x) sd(x) / sqrt(length(x)) # Create own function
x <- data2$numberOfBeetles
standard_error(x)

#Question 2C
ggplot(data=data2, aes(y=numberOfBeetles)) +
  geom_histogram()

