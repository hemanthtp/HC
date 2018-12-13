# environments are just objects.  lets create one.
#http://blog.obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff/
> myEnvironment = new.env()

# print it out...
> myEnvironment
<environment: 0x0000000006ce0920>

  # every environment (except R_EmptyEnv) has an enclosure.
  # Who's myEnvironment's enclosure?  It's "R_GlobalEnv" - find out using parent.env()
  > parent.env( myEnvironment )
<environment: R_GlobalEnv>

  # Who's R_GlobalEnv's enclosing environment?
  # Its the environment called "package:stats" (in my installation, might be different on yours)
  > parent.env( parent.env( myEnvironment ) )
<environment: package:stats>
  attr(,"name")
[1] "package:stats"
attr(,"path")
[1] "C:/R/R-2.14.1/library/stats"

# Here's two other ways to ask the same question.
# This R_GlobalEnv must be special if it can retrieved using the identifier
# .GlobalEnv AND a function globalenv().  We'll discuss R_GlobalEnv later.
> parent.env( .GlobalEnv )
<environment: package:stats>
  attr(,"name")
[1] "package:stats"
attr(,"path")
[1] "C:/R/R-2.14.1/library/stats"
> parent.env( globalenv() )
<environment: package:stats>
  attr(,"name")
[1] "package:stats"
attr(,"path")
[1] "C:/R/R-2.14.1/library/stats"

# The empty environment is accessed using emptyenv()
> emptyenv()
<environment: R_EmptyEnv>

  # Why does myEnvironment have a funky name 0x0000000006ce0920?
  # That's just the location of the environment in memory.
  # We can add a friendly name by assigning a "name" attribute.
  # Unfortunately R doesn't replace the funky name with the friendly name when printing.
  # We can use the environmentName() function to verify our cool name
  > attr( myEnvironment , "name" ) = "Cool Name"
> myEnvironment
<environment: 0x0000000006ce0920>
  attr(,"name")
[1] "Cool Name"
> environmentName( myEnvironment )
[1] "Cool Name"

myValue = 5
environment()


#And we can query an environment for all objects in the frame using ls().
# Here we verify that objects myEnvironment and myValue are both placed in the local environment, R_GlobalEnv
ls( envir = environment() )

# We can override the default behavior and create an object in an environment other than the local environment.
# To do this use the assign() function.  Here we create variable "myLogical" inside myEnvironment.
# We use ls() to verify that there was nothing in myEnvironment before the assignment,
# and again ls() verifies that "myLogical" is inside myEnvironment after the assignment
 ls( envir = myEnvironment )

 assign( "myLogical" , c( FALSE , TRUE ) , envir = myEnvironment )
 ls( envir = myEnvironment )

 # We can retrieve any named object from any given environment using the get() function
  get( "myLogical" , envir = myEnvironment )


  # Here's another way to understand the "current" or "local" environment
  # We create a function that calls environment() to query for the local environment.
  # When R executes a function it automatically creates a new environment for that function.
  # This is useful - variables/objects created inside the function will live in the new local environment.
  # We call Test() to verify this.  We can see that Test() does NOT print R_GlobalEnv.
  # We didn't created any objects within Test().  If we had, they would live in the "0x0000000006ce9b58"
  # environment while Test() is running.  When the function completes executing, the environment dies.
  > Test = function() { print( environment() ) }
  > environment()
  <environment: R_GlobalEnv>
    > Test()
  <environment: 0x0000000006ce9b58>

    # And why not...who's the enclosing environment?
    # There's more than meets the eye here.  We'll go deeper in a bit...
    > Test = function() { print( parent.env( environment() ) ) }
  > Test()
  <environment: R_GlobalEnv>



    # the ls() function shows us all objects defined in a given environment.
    # In this case we're using the identifier .GlobalEnv to refer to the global environment
    # Here we can see that upon startup the global environment contains no objects
    # but after we assign myVariable, the global environment contains an object with that name
     ls( envir = .GlobalEnv )
  character(0)
   myVariable = 0
 ls( envir = .GlobalEnv )
  [1] "myVariable"

  # be careful with the environment() function.  It might seem wrong that this returns NULL
  # but if you read the documentation you'll see that environment() takes a function as input.
  # myVariable is not a function, its a numeric.  The purpose of environment() is not to tell you
  # an object's owner.  More to come...
   environment( myVariable )





    MyFunction = function() {}
    environment( MyFunction )


    # notice how environment(MyFunction) no longer returns R_GlobalEnv
     MyFunction = function() { }
     newEnvironment = new.env()
     environment( MyFunction ) = newEnvironment
     environment( MyFunction )


     # Another way to see a function's environment property is to just print
     # the function. The environment will appear at the bottom of the printed function
      MyFunction


      # Here we do the same for the standard deviation function
      environment( sd )
      sd


      # Can you figure out what's going on here?
      # When run, FromLocal's enclosing environment is the MyFunction environment.  That's where
      # FromLocal was created and that's what R does by default.
      # When R searches for the object "age" within FromLocal it looks to the MyFunction environment,
      # picks-up age = 22 and adds 1 to that.
      # -
      # When run, FromGlobal's enclosing environment is R_GlobalEnv because
      # we assigned the function's environment property to R_GlobalEnv.
      # When R searches for "age" within FromGlobal, it looks at the enclosing environment which is
      # The Global environment, and picks up age = 32 and adds 1 to that.
      # -
      # The environment of NoSearch() already has
      # the age object and does not need to search its enclosing environment(s).
       age = 32
       MyFunction = function()
         {
             age = 22
               FromLocal = function() { print( age + 1 ) }
               FromGlobal = function() { print( age + 1 ) }
               NoSearch =  function() { age = 11; print( age + 1 ) }
               environment( FromGlobal ) = .GlobalEnv
               FromLocal()
               FromGlobal()
               NoSearch()
           }
       MyFunction()



       # get the standard deviation function within package:stats and
       # inspect the function's environment property.
       # Notice that it points to the namespace:stats environment
        statsPackageEnv = as.environment( "package:stats" )
        sdFunc = get( "sd" , envir = statsPackageEnv )
        environment( sdFunc )


         statsNamespaceEnv = environment( sdFunc )
         sdFunc2 = get( "sd" , envir = statsNamespaceEnv )
         environment( sdFunc2 )

         # An easier way to get a namespace environment
         library(testthat)
         statsNamespaceEnv = asNamespace( "stats" )
          statsNamespaceEnv

          Wilks
stats:::Wilks
`:::`

