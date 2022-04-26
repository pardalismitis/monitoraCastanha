limpezaGeral <- function(x){

  AccChars <- "ŠŽšžŸÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðñòóôõöùúûüýÿ "
  RegChars <- "SZszYAAAAAACEEEEIIIIDNOOOOOUUUUYaaaaaaceeeeiiiidnooooouuuuyy_"
  
  for(i in 1:ncol(x)) {
    if(is.character(x[, i])){
      x[ , i] <- chartr(AccChars, RegChars, x[ , i])
      x[ , i] <- tolower(x[ , i])
    }
  }
}