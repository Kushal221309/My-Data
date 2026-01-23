''' 
Write a program to create a dictionary of Hindi words with values as their English translation.
Provide user with an option to look it up! 
'''


W = {}
print(type(W))


words = {
    "madad" : "help",
    "kursi" : "chair",
    "billi" : "cat"
}

word = input("Enter the words you want meaning of : ")
print(words[word])
