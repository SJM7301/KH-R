for(i in 1:ncol(x)){
  this.na <- is.na(x[, i])
  cat(colnames(x)[i], '\t', sum(this.na), '\n')
}

col_na <- function(y){
  return(sum(is.na(y)))
}

na_count <- apply(x, 2, FUN = col_na)
na_count
