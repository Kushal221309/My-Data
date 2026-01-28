class Employee:
    def __init__(self):
        print("Constructor of Employee")
    a = 1

class programmer(Employee):
    def __init__(self):
        super().__init__()
        print("Constructor of Programmer")
    b = 2

class manager(programmer):
    def __init__(self):
        super().__init__()
        print("Constructor of Manager")
    c = 3

# o = Employee()
# print(o.a)

# o = programmer()
# print(o.a, o.b)

o = manager()
print(o.a, o.b, o.c)

