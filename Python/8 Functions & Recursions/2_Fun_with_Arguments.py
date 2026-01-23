# Without name
def goodday():
    print("Good Day")
goodday()

# With name
def goodday(name, ending):
    print("Good Day, " + name)
    print(ending)
goodday("Kushal", "Thank you")
goodday("Amit", "Thank you")
goodday("Rishabh", "Thank you")
# or
def goodday(name, ending="Thank you"):
    print(f"Good Day, {name}")
    print(ending)
goodday("Kushal")


# Return Value
def goodday(name, ending):
    print("Good Day, " + name)
    print(ending)
    return "ok"

a = goodday("Kushal", "Thank you")
print(a)

