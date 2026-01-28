'''
Write a class "calculator" capable of finding 
square, cube and square root of a number.
Squareroot - n**1/2
'''

class calculator:
    def __init__(self, n):
        self.n = n

    def square(self):
        print(f"The Square is : {self.n*self.n}")

    def cube(self):
        print(f"The Cube is : {self.n*self.n*self.n}")

    def squareroot(self):
        print(f"The Squareroot is : {self.n**1/2}")

a = calculator(4)
a.square()
a.cube()
a.squareroot()

