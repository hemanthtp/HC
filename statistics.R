#chap 6: Qualitative Data
 library(MASS)
 head(painters)
 
 #a.Frequency distribution - painters$School
 #---------------------------------------------------------
 #The frequency distribution of a data variable is a summary of the data occurrence
 #in a collection of non-overlapping categories
 #-----------------------------------------------
 #In the data set painters, the frequency distribution of the School variable is a
 #summary of the number of painters in each school
 
 #1.Find the number of painters belonging to each school in the data set painters?
  school = painters$School
  school.freq = table(school)
# The frequency distribution of the schools is:  
  school.freq
#  apply the cbind function to print the result in column format
    cbind(school.freq)
  #  Frequency distribution using table function
        comp = painters$Composition 
        comp.freq = table(comp)    
        cbind(comp.freq)        
  #--------------------------------------------------------------
  #2. Find the frequency distribution of the composition scores in painters?
        comp = painters$Composition
        comp.freq = table(comp)
        cbind(comp.freq)
#---------------------------------------------------------------
  #3. Find programmatically the school that has the most painters?
         school = painters$School
         school.freq = table(school)
         school.freq.max = max(school.freq)
         school.freq.max
         #---------------------------
          L = school.freq == school.freq.max
          x = school.freq[L]
        #---------------------------------
          # An alternative for finding x is to use the function which
          x = which(school.freq == school.freq.max)
          names(x)
  #Note that the obvious function which.max is insufficient. It only gives the first
          #school that has the most painters, instead of every school that has the most
        #  painters.
          y = which.max(school.freq)
          names(y) # missing school "D"
    #b. Relative Frequency Distribution
        #--------------------------------------------------
        #In the data set painters, the relative frequency distribution of the School
         # variable is a summary of the proportion of painters in each school.   
          
#Find the proportion of painters distributed among the schools in the data set painters
           school = painters$School
           school.freq = table(school)
           
            school.relfreq = school.freq / nrow(painters)
            school.relfreq
            
             old = options(digits=1)
             school.relfreq            
             options(old)

              old = options(digits=3)
              cbind(school.relfreq*100)             
              options(old)
#Find the relative frequency distribution of the composition scores in painters
              comp = painters$Composition
              comp.freq = table(comp)
              
              comp.relfreq = comp.freq / nrow(painters)
              comp.relfreq              
              
               old = options(digits=3)
               cbind(comp.relfreq*100)
               options(old)
               