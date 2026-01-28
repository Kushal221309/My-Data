'''
Write a program to read the text from a given file "Poem.txt" 
and find out whether it contains the word "Twinkel".

'''
f = open("My-Data/Python/9 File I O/Practice1.txt")
content = f.read()
if("twinkel" in content):
    print("The word twinkel is present in the content")
else:
    print("The word twinkel is not present in the content")
f.close()

