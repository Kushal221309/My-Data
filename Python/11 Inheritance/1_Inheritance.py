# Parent : Child 

class employee:     # base class (parent)
    company = "ITC"
    def show(self):
        print(f"The name of the employee is {self.name} and the salary is {self.salary}")


# class programmer:
#     company = "ITC Infotech"
#     def show(self):
#         print(f"The name is {self.name} and the salary is {self.salary}")

#     def showlanguage(self):
#         print(f"The name is {self.company} and he is good with {self.language} language")

class programmer(employee):     # inherited class (child)
    company = "ITC Infotech"
    def showlanguage(self):
        print(f"The name is {self.company} and he is good with {self.language} language")


a = employee()
b = programmer()

print(a.company, b.company)
