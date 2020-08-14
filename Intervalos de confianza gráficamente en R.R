# Intervalos de confianza (gráficamente en R)

alpha_2 <- 1.96
curve(dnorm (x, mean=0, sd=1, log=F), xlim=c(-4,4), ylab=NULL, xlab=NULL)
polygon(c(-5,seq(-5,-alpha_2,0.05),-alpha_2), c(0, dnorm(seq(-5,-alpha_2,0.05),0,1), 0), col="grey80")
polygon(c(alpha_2,seq(alpha_2,5,0.05),5), c(0, dnorm(seq(alpha_2,5,0.05),0,1), 0), col="grey80")
text(c(-2,2),c(0.04,0.04),c(0.025,0.025),pos=c(2,4),col="red")

# Intervalos de confianza (gráficamente en R)

alpha_2 <- 1.96
curve(dnorm (x, mean=0, sd=1, log=F), xlim=c(-4,4), ylab=NULL,
      xlab=NULL)
polygon(c(-5,seq(-5,-alpha_2,l=50),-alpha_2),
        c(0, dnorm(seq(-5,-alpha_2,l=50),0,1), 0),
        col="grey80")
polygon(c(alpha_2,seq(alpha_2,5,l=50),5),
        c(0, dnorm(seq(alpha_2,5,l=50),0,1), 0),
        col="grey80")
polygon(c(-alpha_2,seq(-alpha_2, alpha_2,l=100),alpha_2),
        c(0,dnorm(seq(-alpha_2,alpha_2,l=100),0,1),0),
        col="orange")
text(c(-alpha_2,alpha_2),c(0.01,0.01),c("2.5%","2.5%"),
     pos=c(2,4), cex=1.25)
text(0,0.2,"95%",cex=1.5)
