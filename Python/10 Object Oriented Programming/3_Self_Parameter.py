class Employee:
    language = "Py"
    salary = 1200000

    def getinfo(self):
        print(f"The language is : {self.language}\n The salary is : {self.salary}")

    def greet(self):
        print("Good Morning")


kushal = Employee()
kushal.language = "JavaScript"

#Employee.getinfo(kushal)
kushal.getinfo()

kushal.greet()
