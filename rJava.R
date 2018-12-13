if (Sys.getenv("JAVA_HOME")!="")
  Sys.setenv(JAVA_HOME="")



library(rJava)
.jinit() # this starts the JVM
s <- .jnew("java/lang/String", "Hello World!")
s
#-------------------------
.jcall(s,"I","length")

.jcall(s,"I","indexOf","World")

.jmethods(s,"concat")

.jcall(s,"Ljava/lang/String;","concat",s)

print(s)

f <- new(J("java.awt.Frame"), "Hello")
f$setVisible(TRUE)


#----------------
J("java.lang.Double")$parseDouble("10.2")
J("java.lang.Double", "parseDouble", "10.2" )

Double <- J("java.lang.Double")
Double$parseDouble( "10.2")

#http://www.deducer.org/pmwiki/pmwiki.php?n=Main.Development


f <- .jnew("java/awt/Frame", "Hello")
b <- .jnew("java/awt/Button", "OK")
.jcall(f, "Ljava/awt/Component;", "add", .jcast(b, "java/awt/Component"))
.jcall(f,, "pack")
.jcall(f,, "setVisible", TRUE) 