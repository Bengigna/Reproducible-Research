library(ggplot2)
pay<-read.csv("Payments.csv", header = TRUE, sep=",")

pdf("Plot2.pdf", width=35, height=20)

pay_subset<-subset(pay,select = c(Average.Covered.Charges,Average.Total.Payments,DRG.Definition,Provider.State))

ggplot(pay_subset,aes(x=pay$Average.Covered.Charges,y=pay$Average.Total.Payments,fill=Provider.State,
                      colour=Provider.State),label_value())+
  geom_point(stat="identity")+
  facet_grid(Provider.State~DRG.Definition,scales = "free_y")+
  xlab("Average Total Payments")+
  ylab("Average Covered Charges")+
  ggtitle("Mean Payments and charges based on state and medical condition")

dev.off()


