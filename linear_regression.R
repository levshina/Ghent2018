subjects <- c("John", "Mary", "Bill", "Jane", "Laura", "Ann", "Chris", "Eve", "Peter", "Steve")
cookies <- c(0, 3, 5, 7, 9, 10, 13, 16, 18, 20)
kilos <- c(-0.1, 0.4, -0.7, 1.7, 1.3, 0.2, 0.8, 2.5, 1, 2.8)

beers <- c(1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6)
reaction_times <- c(330, 410, 380, 420, 470, 500, 490, 680, 520, 730, 690, 710)

exper_data <- data.frame(beers, reaction_times)
exper_brm <- brm(reaction_times ~ beers, data = exper_data, warmup = 10, chains = 1, iter = 200, prior = prior(normal(-0.5, 0.01), class = b))
exper_brm1 <- brm(reaction_times ~ beers, data = exper_data, warmup = 500, chains = 4, iter = 2000)
