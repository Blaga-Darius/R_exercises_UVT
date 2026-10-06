#4. Simulate the experiment of repeatedly tossing of a coin. Compute the number of tosses that are necessary to obtain two successive heads or two successive tails.


tosses = c()

while (TRUE) {
  
  toss = sample(c("H", "T"), 1)
  tosses = c(tosses, toss)
  
  n = length(tosses)
  
  if (n >= 2 && tosses[n] == tosses[n - 1]) {
    break
  }
}

tosses
length(tosses)