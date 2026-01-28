'''
The game() function in a program lets a user play a game 
and retur the score as an integer you need to read a file 
"Practice2.txt" which is either blank or contains the previous
Hi-score you need to write a program to update the Hi-score
Whenever game() breaks the Hi-score. 

'''
import random

def game():
    print("Your are playing the game..")
    score = random.randint(1, 62) # for 1 to 62 random no.
    # Fetch the hiscore
    with open("My-Data/Python/9 File I O/Practice2.txt") as f:
        hiscore = f.read()
        if(hiscore!=""):
            hiscore = int(hiscore)
        else:
            hiscore = 0

    print(f"Your score : {score}")
    if(score>hiscore):
        # write this hiscore to the file
        with open("My-Data/Python/9 File I O/Practice2.txt","w") as f:
            f.write(str(score))

    return score

game()

