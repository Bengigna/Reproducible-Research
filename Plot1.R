pay<-read.csv("Payments.csv", header = TRUE, sep=",")

pdf("Plot1.pdf", width=6, height=6)

pay_Newyork<-subset(pay,pay$Provider.State=="NY",select = c(Average.Covered.Charges,Average.Total.Payments))
plot(pay_Newyork,col="blue")


dev.off()
