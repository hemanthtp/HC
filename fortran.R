gfortran -std=f95 *.f95 -o main


gcc -g -shared YourCode.c -o YourCode.dll

gcc -g -shared csv.c -o csv.dll

sql.Register("sqlite3_with_extensions",
             &sqlite3.SQLiteDriver{
               Extensions: []string{
                 "csv",
               },
             })

options(available_packages_filters =
          c("R_version", "OS_type", "subarch", "CRAN", "duplicates"))

sink("sink-examp.txt")
available.packages()
sink()
options(max.print=999999)

download.packages(pkgs ="abc", destdir="D:/RSource/", 
                  type="source")

download.packages(A3,type = source)
help("download.packages")
