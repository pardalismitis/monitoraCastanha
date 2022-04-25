library(here)
comercializacao = 
  read.csv(here("data", "formulario5Comercializacao.csv"),
           sep = ",",
           na.strings = c("", "NA"),
           encoding = "UTF-8"
  )

unique(sort(comercializacao$UC))


AccChars <- "ŠŽšžŸÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðñòóôõöùúûüýÿ "
RegChars <- "SZszYAAAAAACEEEEIIIIDNOOOOOUUUUYaaaaaaceeeeiiiidnooooouuuuyy_"

for(i in 1:ncol(comercializacao)) {       
  comercializacao[ , i] <- chartr(AccChars, RegChars, comercializacao[ , i])
  comercializacao[ , i] <- tolower(comercializacao[ , i])
}

comercializacao$Gastos_comercializao <- as.integer(comercializacao$Gastos_comercializao)

unique(comercializacao$Tipo_recipiente)
