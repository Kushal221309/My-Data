
# 1 Arithmetic Op -
a = 1
b = 2
print(a+b)


# 2 Assignment OP -
c = 5
c += 3      # Increment
print(c)

d = 10
d /= 2       # Divide
print(d)


# 3 Comparison OP -
f = 5>3      # for True
print(f)

g = 2==2.1    # for False
print(g)

h = 2!=2.3      # for True
print(h)



# 4 Logical OP -
i = True or False
print(i)

# for or
print("True or False is", True or False)
print("False or True is", False or True)
print("True or True is", True or False)
print("False or False is", False or False)

# for and
print("True and False is", True and False)
print("False and True is", False and True)
print("True and True is", True and False)
print("False and False is", False and False)

# for not
print(not(True))
 # Changes True to False & False to True



# in operator    (ex - 6,6)
a = input("Enter the word to search : ")
str = "kushal is a good boy"
if(a in str):
    print("Found")
else:
    print("Not Found")

    