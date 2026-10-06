#5. In Las Vegas, a roulette wheel has 38 slots numbered 0, 00, 1, 2, ... , 36. The 0 and 00 slots are green and half of the remaining 36 slots are red and half are black. A croupier spins the wheel and throws in an ivory ball. If you bet 1 dollar on red, you win 1 dollar if the ball stops in a red slot and otherwise you lose 1 dollar. Write a program to find the total winnings for a player who makes 1000 bets on red.


winnings = 0

for (i in 1:1000) {
  
  result = sample(c("red", "black", "green"), 
                   size = 1, 
                   prob = c(18/38, 18/38, 2/38))
  
  if (result == "red") {
    winnings = winnings + 1
  } else {
    winnings = winnings - 1
  }
}

winnings