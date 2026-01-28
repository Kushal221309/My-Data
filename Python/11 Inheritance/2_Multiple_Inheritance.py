# Parent1, Parent2 : Child

class employee:     # 1 base class (parent)
    name = "Default name"
    company = "ITC"
    def show(self):
        print(f"The name of employee is {self.name} and the company is {self.company}")

class coder:        # 2 base class (parent)
    language = "Python"
    def printlanguage(self):
        print(f"Out of all language here is your language {self.language}")

class programmer(employee, coder): # multiple inheritance class (child)
    def showlanguage(self):
        print(f"The name is {self.company} and he is good with {self.language} language")

a = employee()
b = programmer()

b.show()
b.printlanguage()
b.showlanguage()

