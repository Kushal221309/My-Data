''' Write a program to fill in a letter template given below with name and date.'''

letter = '''Dear <|Name|>,
You are selected!
<|Date|>
'''

print(letter.replace("<|Name|>", "Kushal").replace("<|Date|>", "1 Sep 2025"))




"""
name = input("Enter your name : ")
date = input("Enter date : ") 
print(f"Dear {name}\nYou are selected \n{date}" )

"""