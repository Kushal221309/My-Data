'''
Write a class train which has methods to book a ticket,
get status (no of seats) and get fare information of 
train running under Indian Railways.

'''

from random import randint
# import random  # print(__{random.randint(_)})

class train:

    def __init__(self, trainno):
        self.trainno = trainno

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

