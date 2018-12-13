devtools::install_github("rustr/rustinr")
install.packages("rustr/cargo")
devtools::install_github("rustr/cargo")
#---------------
library(rustinr)

rust(code ='
     // #[rustr_export]
     pub fn say_hi() -> String{
     "Hello World".into()
     }
     ')

say_hi()
