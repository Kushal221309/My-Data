'''
Create a class with a class attribute a; create
an object from it and set 'a' directly using 
object.a=0.
Q - Does this change the class attribute ?
A - No
'''

class demo:
    a = 4

o = demo()
print(o.a) # prints the class attribute because instane attribute is not present.

o.a = 0 # instance attribute is set
print(o.a) # prints the class attribute because instance attribute is present.

print(demo.a) # prints the class attribute.

