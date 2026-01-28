'''
Write a program to find out whether a file is 
identical & matchs the content the other file.

matching File1 and File2
'''

with open("My-Data/Python/9 File I O/Practice9,1.txt") as f:
    file1 = f.read()

with open("My-Data/Python/9 File I O/Practice9,2.txt") as f:
    file2 = f.read()

if(file1 == file2):
    print("Yes these file is identical")
else:
    print("No these file is not identical")

    