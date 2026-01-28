'''
Write a program to mine a log file and find out 
whether it contains 'Python' 

'''


with open("My-Data/Python/9 File I O/Practice6.txt", "r") as f:
    content = f.read()

if("Python" in content):
    print("Yes Python is present")
else:
    print("Python is not present")
    