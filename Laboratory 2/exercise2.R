#Two football teams are playing. Let A be the event that the match ends in a draw, and let B be the event that the home team wins. Assuming that not more than 6 goals are scored in all, list the sample space and the following events: A ∩ B and A ∪ B. Let C be the event that the away team scores. List the elements of A ∪ C^c, A^c ∩ B ∩ C. Show directly that A ∩ (B^c ∪ C) = A.

#-------------------------------------------------------------------------
# a function for printing

pr <- function(name, lst) {
  cat("\n", name, " = {", sep = "")
  
  if (length(lst) == 0) {
    cat("}")
    cat("\n")
    return()
  }
  
  for (i in 1:length(lst)) {
    cat("(", lst[[i]][1], ", ", lst[[i]][2], ")", sep = "")
    
    if (i < length(lst)) {
      cat(", ")
    }
  }
  
  cat("}\n")
}

#-------------------------------------------------------------------------

n <- as.integer(readline("Nr of maximum goals: "))

O <- list()
A <- list()
B <- list()
C <- list()

for (x in 0:n){
  for (y in 0:(n -x)){
    O[[length(O) + 1]] <- c(x, y)
    
    if (x==y){
      A[[length(A) + 1]] <- c(x, y)
    }
    
    if (x>y){
      B[[length(B) + 1]] <- c(x, y)
    }
    
    if (y > 0) {
      C[[length(C) + 1]] <- c(x, y)
    }
  }
}


pr("Omega", O)
pr("A", A)
pr("B", B)
pr("C", C)

AnB <- list()

for (i in 1:length(A)) {
  for (j in 1:length(B)) {
    if (all(A[[i]] == B[[j]])) {
      AnB[[length(AnB) + 1]] <- A[[i]]
    }
  }
}

pr("A intersectat B", AnB)

AuB <- list()

for (i in 1:length(A)) {
  AuB[[length(AuB) + 1]] <- A[[i]]
}

for (i in 1:length(B)) {
  exist <- FALSE
  
  for (j in 1:length(AuB)){
    if (all(B[[i]] == AuB[[j]])) {
      exist <- TRUE
    }
  }
  
  if (exist <- FALSE){
    AuB[[length(AuB) + 1]] <- B[[i]]
  }
}

pr("A reunit B", AuB)

Cc <- list()

for (i in 1:length(O)) {
  if (O[[i]][2] == 0) {
    Cc[[length(Cc) + 1]] <- O[[i]]
  }
}

pr("Complementul lui C", Cc)

AuCc <- list()

for (i in 1:length(A)){
  AuCc[[length(AuCc) + 1]] <- A[[i]]
}

for (i in 1:length(Cc)){
  exist <- FALSE
  
  for (j in 1:length(AuCc)){
    if (all(Cc[[i]] == AuCc[[j]])){
      exist <- TRUE
    }
  }
  
  if (exist == FALSE){
    AuCc[[length(AuCc) + 1]] <- Cc[[i]]
  }
}

pr("A reunit complementul lui C", AuCc)

Ac <- list()

for (i in 1:length(O)) {
  exist <- FALSE
  
  for (j in 1:length(A)) {
    if (all(O[[i]] == A[[j]])) {
      exist <- TRUE
    }
  }
  
  if (exist == FALSE) {
    Ac[[length(Ac) + 1]] <- O[[i]]
  }
}

pr("Complementul lui A", Ac)

AcnBnC <- list()

for (i in 1:length(B)) {
  for (j in 1:length(C)) {
    if (all(B[[i]] == C[[j]])) {
      
      exist <- FALSE
      
      for (k in 1:length(Ac)) {
        if (all(B[[i]] == Ac[[k]])) {
          exist <- TRUE
        }
      }
      
      if (exist == TRUE) {
        AcnBnC[[length(AcnBnC) + 1]] <- B[[i]]
      }
    }
  }
}

pr("A complement intersectat B intersectat C", AcnBnC)

Bc <- list()

for (i in 1:length(O)) {
  exist <- FALSE
  
  for (j in 1:length(B)) {
    if (all(O[[i]] == B[[j]])) {
      exist <- TRUE
    }
  }
  
  if (exist == FALSE) {
    Bc[[length(Bc) + 1]] <- O[[i]]
  }
}

pr("Complementul lui B", Bc)


BcuC <- list()

for (i in 1:length(Bc)) {
  BcuC[[length(BcuC) + 1]] <- Bc[[i]]
}

for (i in 1:length(C)) {
  exist <- FALSE
  
  for (j in 1:length(BcuC)) {
    if (all(C[[i]] == BcuC[[j]])) {
      exist <- TRUE
    }
  }
  
  if (exist == FALSE) {
    BcuC[[length(BcuC) + 1]] <- C[[i]]
  }
}

pr("Complementul lui B reunit C", BcuC)


AnBcuC <- list()

for (i in 1:length(A)) {
  for (j in 1:length(BcuC)) {
    if (all(A[[i]] == BcuC[[j]])) {
      AnBcuC[[length(AnBcuC) + 1]] <- A[[i]]
    }
  }
}

pr("A intersectat (Complementul lui B reunit C)", AnBcuC)
pr("Egalitate", A)