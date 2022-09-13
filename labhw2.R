library(ggplot2);
library(scales);
library(ggpubr);

#Question 1A
data = read.csv(file="C:/Users/doria/OneDrive/Desktop/Storage/School/AppliedStatistics/zebrafish-corpseflower/chap03q23ZebraFishBoldness.csv", sep=",", header=T);
ggplot(data, aes(x=genotype, y=secondsAggressiveActivity, fill=genotype)) + 
  geom_boxplot(alpha=0.7) +
  labs(title="Zebrafish Aggressive Activity", 
       x="Genotype",
       y="Seconds of Aggressive Activity");