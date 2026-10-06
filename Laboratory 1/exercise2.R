#2. Simulate m successive rolls of a die and count the number of occurrences of the number 6. Based on your simulation results, estimated the probability of obtaining the number 6. At first, consider a small number of repetitions (m = 60) and then try for a larger number of repetitions (m = 6000).

for (m in c(60, 6000)) {
  
  rolls = sample(1:6, m, replace = TRUE)
  
  sixes = sum(rolls == 6)
  probability = sixes / m
  
  cat("m =", m,
      "| Sixes =", sixes,
      "| Estimated probability =", probability, "\n")
}
