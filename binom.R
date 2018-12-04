#Prior 1: uniform prior ("no clue")
a <- 1
b <- 1

#Prior 2: skewed to the right ("cautiosly optimistic")
a <- 5
b <- 3

#Prior 3: skewed to the right, narrower ("experienced optimistic user")
a <- 50
b <- 30

#Prior 4: skewed to the left ("rather pessimistic")
a <- 4
b <- 10


Theta <- seq(from = 0, to = 1, by = 0.0001)
P_Theta <- dbeta(Theta, a, b)
plot(Theta, P_Theta, main = "Prior", col = "blue")

#Data
#Data 1: few observations, skewed to the right ("first encouragement")
Success <- 4
Failure <- 1

#Data 2: more observations, the same ratio ("you're doing really well!")
Success <- 100
Failure <- 25

#Data 3: many observations, skewed to the left ("harsh reality")
Success <- 18
Failure <- 82


#Total_N <- Success + Failure  
#P_Data_Given_Theta <- Theta^Success*(1 - Theta)^(Total_N - Success)
#plot(Theta, P_Data_Given_Theta, main = "Likelihood", col = "blue")

#Posterior
P_Theta_Given_Data <- dbeta(Theta, a + Success, b + Failure)
plot(Theta, P_Theta_Given_Data, main = "Posterior", col = "blue")

#95% credible intervals
abline(v = qbeta(0.975, a + Success, b + Failure), col = "red")
abline(v = qbeta(0.025, a + Success, b + Failure), col = "red")

