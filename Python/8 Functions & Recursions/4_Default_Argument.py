"""
def goodday(name, ending):
    print("Good Day, " + name)
    print(ending)
goodday("Kushal", "Thank you")
"""


# Default argument
def goodday(name, ending="Thank you"): # Thank you by default
    print(f"Good Day, {name}")
    print(ending)
goodday("Kushal") # it will take by default
goodday("Amit", "Thanks") # it will take given value

