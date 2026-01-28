class employee:
    a = 1

    @classmethod
    def show(cls):
        print(f"The class attribute of a is {cls.a}")

    @property   # for return 
    def name(self):
        return f"{self.fname} {self.lname}"
    
    @name.setter 
    def name(self, value):
        self.fname = value.split(" ")[0]
        self.lname = value.split(" ")[1]

o = employee()
o.a = 50

o.name = "Kushal Dubey"
print(o.fname, o.lname)

o.show()

