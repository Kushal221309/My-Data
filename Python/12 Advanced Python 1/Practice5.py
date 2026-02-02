'''
Store the multiplication tables generated in problem 
3 in a file named Tables.txt.

'''

n = int(input("Enter the no. : "))
table = [n*i for i in range(1, 11)]
print(table)

with open("My-Data/Python/12 Advanced Python 1/Practice5.txt", "a") as f:
    f.write(f"Table of {n} : {str(table)} \n")
