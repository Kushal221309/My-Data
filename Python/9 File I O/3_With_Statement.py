f = open("My-Data/Python/9 File I O/3_With_Statement.txt")
print(f.read())
f.close()   # for file close

print("\n")

# The same can be written using with statement like this:
with open("My-Data/Python/9 File I O/3_With_Statement.txt") as f:
    print(f.read())
# you dont have to explicitly close the file

