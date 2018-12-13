demo(package = .packages(all.available = TRUE))
demo(lm.glm, package = "stats")
demo(package = "RDCOMClient")
help(area, package="MASS")
help(package="excel.link")

args(sample)

tools::package_dependencies("sqldf")

packageDescription("sqldf")
desc$get_deps()
desc$get_authors()

example(lm)
example("getCLSID")

?"sin"
apropos("^sin")

??"^glm"

example("sink")
example("sink")

 ## Find the location of a demo
system.file("demo", "lm.glm.R", package = "stats")
