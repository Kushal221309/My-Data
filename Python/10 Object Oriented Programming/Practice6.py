'''
Can you change the self-parameter inside a class to 
something else (say "Kushal"). Try changing self to
"slf" or "Kushal" and see the effects.

'''

from random import randint
# import random  # print(__{random.randint(_)})

class train:

    def __init__(slf, trainno): # used slf
        slf.trainno = trainno   # used slf

    def book(self, fromm, to):
        print(f"Ticket is boking in train no. : {self.trainno} From {fromm} to {to}")

    def getstatus(self):
        print(f"Train no. {self.trainno} is running on time")

    def getfare(self, fromm, to):
        print(f"Ticket fare in train no. {self.trainno} from {fromm} to {to} is {randint(222, 5555)}")


t = train(221309)
t.book("Rampur", "Delhi")
t.getstatus()
t.getfare("Rampur", "Delhi")


# no effect 
