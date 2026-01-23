"""
write a program to find out where a student is pass or fail,
if it requires total 40% & at least 33% in each student to pass
assume 3 subject & take more as an input from the user.

"""

m1 = int(input("Enter the Marks 1 : "))
m2 = int(input("Enter the Marks 2 : "))
m3 = int(input("Enter the Marks 3 : "))

# check for total percentage
total_percentage = (m1 + m2 + m3)/3

if(total_percentage>=40 and m1>=33 and m2>=33 and m3>=33):
    print("You are Pass : ", total_percentage)

else:
    print("You are Fail : ", total_percentage)

