# __init__() Constructor - 
# This is a Dunder method which is automatically called.

class Employee:
    language = "Py"
    salary = 1200000

    def __init__(self, name, salary, language): # automatically called
        self.name = name
        self.salary = salary
        self.language = language
        print("I am creating an object")

# kushal.name = "Kushal"
kushal = Employee("Kushal", 1300000, "JavaScirpt") # instance attribute

print(kushal.name, kushal.salary, kushal.language)
