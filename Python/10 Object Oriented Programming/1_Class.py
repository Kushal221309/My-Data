class Employee: # for Ex. - Form
    language = "Py" # This is a class attribute
    salary = 1200000

kushal = Employee()  # object instantation
kushal.name = "Kushal Dubey" # This is an instance attribute
print(kushal.name, kushal.language, kushal.salary)

rishabh = Employee()
rishabh.name = "Risahbh"
print(rishabh.name, rishabh.language, rishabh.salary)

''' Here name is instance attribute and salary & language are class attribute
         as they directly belong to the class.'''
