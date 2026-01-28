'''
Write a program to generate multiplication tables from 2-20
and write it to the different file. place these file in a folder 
for a 13 year old.

'''

def generateTable(n):
    table = ""  # for empty str
    for i in range(1, 11):
        table += f"{n} X {i} = {n*i}\n" # += (table + table)

    with open(f"My-Data/Python/9 File I O/Practice3_Tables/table_{n}.txt", "w") as f:
        f.write(table)

for i in range(2, 21):
    generateTable(i)


    