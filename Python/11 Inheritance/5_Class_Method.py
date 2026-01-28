class employee:
    a = 1

    # def show(self):
    #     print(f"The class attribute of a is {self.a}")
   
    @classmethod
    def show(cls):
        print(f"The class attribute of a is {cls.a}")

o = employee()
o.a = 50    # it will not show instance attribute

o.show()

