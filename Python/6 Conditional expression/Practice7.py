"""
Write a program to find out whether a given post is
talking about "Kushal" or not

"""
post = input("Enter your post : ")

if("Kushal".lower() in post.lower()):
    print("This post talking about Kushal")
else:
    print("This post is not talking about Kushal")

# .lowre() is used for small & capital letter

