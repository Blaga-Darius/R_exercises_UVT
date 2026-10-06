#6. Consider the points P(1, 1), Q(50, 95) and R(99, 1) in the two-dimensional plane. (1) Randomly select any point inside the triangle and consider that your current position. (2) Randomly select any one of the 3 vertex points P, Q or R. (3) Move half the distance from your current position to the selected vertex. (4) Plot the current position. (5) Repeat from step 2 (try at least 1000 repetitions).

#P = (1, 1)
#Q = (50, 95)
#R = (99, 1)

P = c(1, 1)
Q = c(50, 95)
R = c(99, 1)

vertices = list(P, Q, R)

a = runif(1)
b = runif(1)

if (a + b > 1) {
  a = 1 - a
  b = 1 - b
}

current = a * P + b * Q + (1 - a - b) * R


points = matrix(0, nrow = 1000, ncol = 2)

for (i in 1:1000) {
  
  vertex = sample(1:3, 1)
  
  current = (current + vertices[[vertex]]) / 2
  
  points[i, ]  current
}

plot(points[,1], points[,2],
     pch = 16,
     xlab = "x",
     ylab = "y",
     main = "Chaos Game")