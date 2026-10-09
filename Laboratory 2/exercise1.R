#1. Organizers of a three-day conference are considering food items for lunch. The two available options are either fish or meat. Set up a set as the sample space for all possibilities. How would the set change if the organizers insist that the same food item not be served on two consecutive days?

#TASK1 = we have 3 days and to types of food: fish and meat. cause we need to choose juct oe per day and in the first task we dont have rules, is two options per every day(3 days) so the calcul is (nr of food types)^(nr of days) -> in our case is 2^3 = 8.

#TASK2 =- here the organizators bring a new rule, where is not posible to have 2 types of food consecutive. so the formula for this will be n*(n-1)^(d-1). 
#                                                                                                                                          n = nr of food types
#                                                                                                                                          d = nr of days

days <- as.integer(readline("nr of days: "))
n <- as.integer(readline("nr of options: "))

if (is.na(days) || is.na(n) || days < 1 || n < 1) {
  stop("!!! nr of days and nr of options should be > 0 !!!")
}

ftypes <- character(n)

for (i in 1:n) {
  ftypes[i] <- readline(paste("Type the food option nr", i, ": "))
}

if (anyDuplicated(ftypes)) {
  stop("!!! food types should be different !!!")
}

lst <- rep(list(ftypes), days)
names(lst) <- paste0("day", seq_len(days))

tap <- expand.grid(lst)

cat("\n--- WITHOUT RESTRICTIONS ---\n")
print(tap)

cat("Total number of possibilities:", nrow(tap), "\n")

if (days == 1) {
  tv <- tap
} else {
  v <- rep(TRUE, nrow(tap))
  
  for (i in seq_len(days - 1)) {
    v <- v & (tap[[i]] != tap[[i + 1]])
  }
  
  tv <- tap[v, , drop = FALSE]
}

cat("\n--- WITH RESTRICTIONS ---\n")
print(tv)

cat("Number of valid possibilities:", nrow(tv), "\n")

