'''
Create a class 'employee' and add salary and increment
properties to it.
Writhe a methord 'salaryAfterincrement' method with a
@property decorator with a setter which changes the value
of increment based on the salary.

new salary = salary + (salary * increment%/100)
increment = ((new salary/salary) -1) * 100
'''

class employee:
    salary = 264
    increment = 20
    
    @property
    def salaryAfterIncrement(self):
        return (self.salary + self.salary * (self.increment/100))

    @salaryAfterIncrement.setter # for increment property change
    def salaryAfterIncrement(self, salary):
        self.increment = ((salary/self.salary) -1)*100

e = employee()

# print(e.salaryAfterIncrement)

e.salaryAfterIncrement = 280.8
print(e.increment)
