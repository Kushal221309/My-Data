'''
Write a list comprehension to print list which contains 
the multiplication table of a user entered number.

'''
n = int(input("Enter the no. : "))

# for i in range(1, 11):
#     table = n*i
#     print(table)


table = [n*i for i in range(1, 11)]
print(table)


