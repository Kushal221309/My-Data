'''
Add a static method in problem 2,
to greet te user with Hello.

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

    @staticmethod
    def hello():
        print("Hello there!")

a = calculator(4)
a.hello()
a.square()
a.cube()
a.squareroot()

