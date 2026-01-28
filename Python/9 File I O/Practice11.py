'''
Write a program to rename a file
'''

with open("My-Data/Python/9 File I O/Practice11,1.txt") as f:
    content = f.read()

with open("My-Data/Python/9 File I O/Practice11,2.txt", "w") as f:
    f.write(content)

