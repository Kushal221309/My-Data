"""
Write a program to greet all the person names
stored in a list l1 and which satarts whith R.
l1 = ["Kushal", "Amit", "Rishabh", "Shivam"]

"""

l1 = ["Kushal", "Amit", "Rishabh", "Shivam"]

for name in l1:
    if(name.startswith("R")):
        print(f"Hello {name}")