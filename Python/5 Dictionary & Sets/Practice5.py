"""
create an empty dictionary, 
allow 4 friends to enter their favorite language as value ans key as their names,
assume that the names are unique. 
    
"""


d = {}

name = input("Enter friend name : ")
lang = input("Enter language name : ")
d.update({name : lang})

name = input("Enter friend name : ")
lang = input("Enter language name : ")
d.update({name : lang})

name = input("Enter friend name : ")
lang = input("Enter language name : ")
d.update({name : lang})

name = input("Enter friend name : ")
lang = input("Enter language name : ")
d.update({name : lang})

print(d)