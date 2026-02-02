try:   # for invalide
    a = int(input("Hey, Enter the number : "))
    print(a)


except ValueError as v:
    print(v)

except Exception as e:
    print(e)

print("Thank you")
