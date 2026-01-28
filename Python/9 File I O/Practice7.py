'''
Write a program to find out the line number 
where python is present.

'''

with open("My-Data/Python/9 File I O/Practice7.txt") as f:
    lines = f.readlines()

line_no = 1
for line in lines:
    if("Python" in line):
        print(f"Yes python is present. Line no. : {line_no}")
        break
    line_no += 1

else:
   print("Python is not present")

