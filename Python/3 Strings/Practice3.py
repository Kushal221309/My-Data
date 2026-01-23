''' 
Write a program to detect double space in a string.
Replace the double space from problem 3 with single spaces. 
'''


# Q1 = find the index (double spaces) of string

name = "Kushal is a good  boy"
print(name.find("  "))  # "  " is the index

"""
-1 = not found.
num = position of index.
"""

# Q2 = replace double spaces
name2 = "Kushal is a  good boy"
print(name2.replace("  "," "))

"""
string is an Immutable,
their value can not be changed,
it always creates a new value.
"""