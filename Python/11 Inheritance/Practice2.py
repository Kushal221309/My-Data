'''
Create a class 'pets' from a class 'animals' and further create 
a class 'dog' from 'pets' add a method 'bark' to class 'dog'

'''


class animals:
    pass

class pets(animals):
    pass

class dog(pets):
    @staticmethod
    def bark():
        print("Bow Bow!")

a = dog
a.bark()

