class Employee:
    language = "Py"
    salary = 1200000

    def getinfo(self):
        print(f"The language is : {self.language}\nThe salary is : {self.salary}")
    
    @staticmethod   # staticmethod is a Decorator
    def greet():
        print("Good Morning")

kushal = Employee()

kushal.getinfo()
kushal.greet()

