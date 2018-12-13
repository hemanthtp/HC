 a <- 1234
 e <- globalenv()
 ls()

 ls(e)

 e$a

 class(e)

 #Remove from environment
 rm(e)

 globalenv()

  g <- globalenv()
  while (environmentName(g) != 'R_EmptyEnv') { g <- parent.env(g); cat(str(g, give.attr=F)) }


  beatles <- list('george'='guitar','ringo'='drums','paul'='bass guitar','john'='guitar')
  attach(beatles)
search()
john


 z = list(mean='fluffernutter')
 attach(z)
 mean


 mean(c(1,2,3,4))

 detach(z)


  z = list(mean=function(x){ return("flapdoodle") })
  attach(z)

  mean(c(4,5,6,7))
