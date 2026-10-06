#1. Simulate m successive tosses of a coin and count the number of occurrences of heads. Based on your simulation results, estimated the probability of obtaining heads. Consider the following cases: m = 10, m = 100, m = 1000.

for (m in c(10, 100, 1000)) {
  tosses = sample(c("H", "T"), m, replace = TRUE)
  
  heads = sum(tosses == "H")
  probability = heads / m
  
  cat("m =", m, 
      "| Heads =", heads, 
      "| Estimated probability =", probability, "\n")
}


