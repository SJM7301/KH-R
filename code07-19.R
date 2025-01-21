score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <- which(score<=60)
score[idx] <- 61
score

idx <- which(score>=80)
score.high <- score[idx]
score.high