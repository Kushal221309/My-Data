List = ["Apple", "Orange", 5, 2.6, False, "Amit", "Dubey"]
print(List[0])

List[0] = "Grapes"  # unlike string list are mutable
print(List[0])

print(List[1:5])    # sicing [Orange, 5, 2.6, False]


# list methods

List.append("Kushal")   # Add a new char
print(List)

L1 = [1, 5, 9, 3, 2]
L1.sort()       # for serial number
print(L1)

L2 = [1, 5, 9, 3, 2]
L2.reverse()    # for reverse the number
print(L2)

L3 = [1, 5, 9, 3, 2]
L3.insert(3, 333)    # insert 333 such that its index in the list is 3
print(L3)

L4 = [1, 5, 9, 3, 2]
L4.pop(3)          # to delete a value
# print(L4.pop(3))    # to find the deleted value
print(L4)

L5 = [1, 5, 9, 3, 2]
L5.remove(9)    # remove the 9
print(L5)
