# gamblersruin.R
# Example 1.11

# gamble(k, n, p)
  #   k: Gambler's initial state
  #   n: Gambler plays until either $n or Ruin
  #   p: Probability of winning $1 at each play
  #   Function returns 1 if gambler is eventually ruined
  #                    returns 0 if gambler eventually wins $n
  
gamble <- function(k,n,p) {
	stake <- k
	count <-0
	while (stake > 0 & stake < n) {
		bet <- sample(c(-1,1),1,prob=c(1-p,p))
		stake <- stake + bet
		count <- count + 1
	}
	if (stake == 0) return(c(0, count)) else return(c(1, count))
	}   

k <- 10 
n <-  30  
p <- 1/2  
trials <- 1000
simlist <- replicate(trials, gamble(10, 30, 0.5))
mean(simlist) # Estimate of probability that gambler is ruined
# For p = 0.5, exact probability is (n-k)/n 
