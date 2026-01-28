'''
Write a class 'complex' to represented complex numbers,
along with overloade operators '+' and '*' which adds 
and multiplies them.

add two complex num - (a+bi)+(c+di) = (a+c)+(b+d)i
multiply two complex num - z1.z2 = (ac-bd)+(ad+bc)i

'''
class complex:
    def __init__(self, r, i):
        self.r = r
        self.i = i

    def __add__(self, c2):  # add
        return complex(self.r + c2.r, self.i + c2.i)
    
    def __str__(self):
        return f"{self.r} + {self.i}i"


    def __mul__(self, c2):  # multiply
        realpart = self.r * c2.r - self.i * c2.i
        imagpart = self.r * c2.i - self.i * c2.r
        return complex(realpart, imagpart)


c1 = complex(1, 2)  # (r, i)
c2 = complex(3, 4)  # (c2r, c2i)

print(c1 + c2)
print(c1 * c2)

