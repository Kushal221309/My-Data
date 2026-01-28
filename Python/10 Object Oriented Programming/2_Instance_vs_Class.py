class Employee:
    language = "Py"     # (it will not print) Default language
    salary = 1200000

kushal = Employee()
kushal.language = "JavaScript" # (print) Instance attribute
print(kushal.language, kushal.salary)

