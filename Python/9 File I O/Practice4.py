'''
A file contains a word "Donkey" multiple times you need
to write a program which replace this word whitt ##### 
by updating the same file .

'''

word = "Donkey"

with open("My-Data/Python/9 File I O/Practice4.txt", "r") as f:
   content = f.read()

contentNew = content.replace(word, "######")

with open("My-Data/Python/9 File I O/Practice4.txt", "w") as f:
   f.write(contentNew)
