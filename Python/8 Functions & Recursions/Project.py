
# Snake, Water, Gun Game


"""
1 for snake
-1 for water
0 for gun

"""
import random   # using module

computer = random.choice([-1, 0, 1])
youstr = input("Enter your choice : ")
youDic = {"s": 1, "w": -1, "g": 0}
reverseDic = {1: "Sanke", -1: "Water", 0: "Gun"}

you = (youDic[youstr])

# By now we have 2 number (variable) you and computer

print(f"You chose {reverseDic[you]}\nComuter chose {reverseDic[computer]}")

if(computer == you):
    print("Its a draw")
else:
    if(computer ==-1 and you ==1):
        print("You Win!")

    elif(computer ==-1 and you ==0):
        print("You Lose!")


    elif(computer ==1 and you ==-1):
        print("You Lose!")

    elif(computer ==1 and you ==0):
        print("You win!")


    elif(computer ==0 and you ==1):
        print("You Lose!")

    elif(computer ==0 and you ==-1):
        print("You Win!")
    
    else:
        print("Something went wrong!")
  