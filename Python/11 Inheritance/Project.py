'''
We are going to write a program that generates a random
number and asks the user to guess it.

If the players guess is higher then the actual number,
the programmer displays "Lower number please".
Similarly, if the users guess is too low, the programmer
print "Higher number please" when the user gusses the
correct number, the program displays the number of
gusses the player used to arrive at the number.

Hint : Use the random module.

'''

import random
n = random.randint(1, 100)
a = -1
guesses = 0
while(a != n):
    guesses +=1
    a = int(input("Guess the number : "))
    if(a > n):
        print("Lower number please")
    else:
        print("Higher number please")

print(f"You have guessed the number {n} correctly in {guesses} attempt")

