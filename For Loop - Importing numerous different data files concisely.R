


### Importing numerous data files 


# This is the For Loop:
for(i in 2013:2017) {
  assign(paste0("cml_", i), 
         value = read_spss(paste0("Datasets/CML/CML - ", i, ".sav")))
}



# When to use -------------------------------------------------------------------


# This is a loop that can import numerous files easily and conciesly. If you have a number 
# of different files for data (like the ASHE data), such as a different file for each year, 
# you can use this for loop to import them all in. 


# The below for loop attempts to import 5 big spss .sav files for each year going from 2013 to 2017
# Rather that having a different line of code for each file, we can write a for loop for the whole thing.
# This makes code a lot more concise and readable. And it's much quicker to write. It is ideal if your
# code is looking like the below:

cml_2013 <- read_spss("Datasets/CML/CML - 2013.sav")
cml_2014 <- read_spss("Datasets/CML/CML - 2014.sav")
cml_2015 <- read_spss("Datasets/CML/CML - 2015.sav")
cml_2016 <- read_spss("Datasets/CML/CML - 2016.sav")
cml_2017 <- read_spss("Datasets/CML/CML - 2017.sav") # ... Lots of copying and pasting.





# For loop Deconstructed ----------------------------------------------------------

library(haven) # Library used for the read_spss() function only. All other aspects are in base R.  


for(i in 2013:2017) { # This sets up the for loop. Replace the 2013:2017 values to suit your purpose. 
                      # for example, if you have files from 1999 to 2018 you can write 1999:2018
  
  
  # The below function is the same as doing x <- y. It assigns an object to a name. 
  # In this case we are assigning our data files to a number of different names.
  assign( 
    
    
    # The first field is the name that we assign the object to. Since we want it to be different each
    # time, we use the paste0(). The reason it has a zero on the end by the way is to contain no spaces
    # between pastes. If you wish to have a space in between (like copying words to form a sentence) you 
    # can use the normal paste() function. So this is saying "paste i onto the end of cml_". 
    paste0("cml_", i), 
    
    
    # The value field is the object we're assigning the names to. Here we can use functions like 
    # fread(), read.csv(), read_excel()... We just need to write in the locations of the files.
    # The files need to be in the same folder (for this loop, it can be tweaked though to go around
    # this) and all have the same structure, with the only things changing being the date. That
    # way we can keep the same i values and paste them in just like we did before. If the are all
    # different names, the loop will have to be edited and won't look as nice.
    # Don't forget to specify the file extension too at the end! So this function is saying "paste
    # i in between Datasets/CML/CML - and .sav
    value = read_spss(
      
      paste0("Datasets/CML/CML - ", i, ".sav")
      
    )
    
  ) # End of assign function
  
  
} # End of for loop







