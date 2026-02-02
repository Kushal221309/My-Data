'''
A list contains the multiplication table of 7. write 
a program to convert it to vertical string of same num.

'''

table = [str(7*i) for i in range(1, 11)] # it needs a str
t = "\n".join(table)
print(t)

