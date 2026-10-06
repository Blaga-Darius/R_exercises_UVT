#3. Generate 300 random numbers in the range [0, 100). How many numbers do you have in the ranges I1 = [0, 20), I2 = [20, 40), I3 = [40, 60), I4 = [60, 80) and I5 = [80, 100), respectively?

numbers = runif(300, min = 0, max = 100)

I1 = sum(numbers >= 0 & numbers < 20)
I2 = sum(numbers >= 20 & numbers < 40)
I3 = sum(numbers >= 40 & numbers < 60)
I4 = sum(numbers >= 60 & numbers < 80)
I5 = sum(numbers >= 80 & numbers < 100)

cat("I1 =", I1, "\n")
cat("I2 =", I2, "\n")
cat("I3 =", I3, "\n")
cat("I4 =", I4, "\n")
cat("I5 =", I5, "\n")