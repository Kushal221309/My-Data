'''
Create a class "Programmer" for storing information 
of few programmers working at microsoft.

'''

class programmer:
    company = "Microsoft"
    def __init__(self, name, salary, pin):
        self.name = name
        self.salary = salary
        self.pin = pin

k = programmer("Kushal", 1200000, 221309)
print(k.name, k.company, k.salary, k.pin)

r = programmer("Rishabh", 1300000, 221309)
print(r.name, r.company, r.salary, r.pin)



        