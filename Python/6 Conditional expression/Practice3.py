"""
 A spam comment is definded as a text containsing fllowing keywords
"make a lot of money", "buy now", "subscibe this", "click this",
write a program to detect there spams.
 
 """


a = input("Enter your comment : ")

p1 = "make a lot of money"
p2 = "buy now"
p3 = "subscibe this"
p4 = "click this"

if((a in p1) or (a in p2) or (a in p3) or (a in p4)):
    print("This Comment is a Spam")
else:
    print("This Comment is not Spam")

