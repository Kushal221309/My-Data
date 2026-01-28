'''
Write a program to make a copy of a text file.

copy Text to Copy file.
'''


with open("My-Data/Python/9 File I O/Practice8,1.txt") as f:
    content = f.read()

with open("My-Data/Python/9 File I O/Practice8,2.txt", "w") as f:
    f.write(content)
    