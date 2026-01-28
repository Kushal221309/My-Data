str = "Hey Kushal you are amazing"

f = open("My-Data/Python/9 File I O/2_File_Write.txt","w")

## Appending (the same thing will be added at the end,
##            and as many times i rum it, it will be added,)
#f = open("python/9 File I O/2_File_Write.txt","a")

f.write(str)

f.close()

