###### pregunta 2######
listaDocumentos <- list(c("mp","Juan","Christofer"),
                        c("of","av01","ampr"),
                        c("of","av01","ante"),
                        c("of","av08","arme"),
                        c("of","av02","ante"),
                        c("of","av07","ampr"),
                        c("of","av03","dape"),
                        c("of","av01","meca"),
                        c("of","av02","dape"),
                        c("mp","Antonia"),
                        c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),
                        c("of","av05","meca"),
                        c("of","av04","dape"),
                        c("of","av02","arme"))
listaDocumentos


  count_mp <-function(listaDocumentos){
  
  niños <-c()
  revisando<- list()
  x<-list()
  
  for(i in listaDocumentos){
    if(i[1] =="mp"){
      revisando <-length(i[-1])
      niños<- c(niños, unlist(revisando))
    }
  }
  buscar<- unique(niños)
  for (revisando_niños in buscar) {
    x[length(x)+1] <- unlist(revisando_niños)
  }
  x2<- x
  for (equis in 1:length(buscar)) {
    x2 <- c(x[[equis]][1],length(c(niños[niños == buscar[equis]])))
    print(paste("Se cuentan con",x2[2], "mp de",x2[1], "niños"))
  }
}

count_mp(listaDocumentos)





