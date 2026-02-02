'''
Write a program to input name, marks and phone number
of a student and format it using the formate function
like below:

"the name of the student is Kushal, his marks are 72
and phone number is 99999988"

'''

name = input("Enter the Name : ")
marks = int(input("Enter the Marks : "))
phone = int(input("Enter the Phone no. : "))

s = "The name of the student is {}, His marks are {} and Phone number is {}".format(name, marks, phone)

print(s)
