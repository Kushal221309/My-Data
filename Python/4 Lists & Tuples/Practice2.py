''' Write a program to accept marks of 3 students and display them in a sorted manner. '''

Marks = []

m1 = int(input("Enter marks : "))
Marks.append(m1)

m2 = int(input("Enter marks : "))
Marks.append(m2)

m3 = int(input("Enter marks : "))
Marks.append(m3)

Marks.sort()    # for ascending order

print(Marks)