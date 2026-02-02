# Using walrus operator (:=)
if (n := len([1, 2, 3, 4, 5])) >3:
    print(f"List it too long ({n} elements, expected <= 3)")  
    # output : list is too long (5 elements, expected <=3)


# list = [1, 2, 3, 4, 5]
# n = len(list)
# if(n>3):
#     print(f"List it too long ({n} elements, expected <= 3)")
