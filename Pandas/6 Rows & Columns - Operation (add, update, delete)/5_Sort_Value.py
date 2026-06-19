
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

asc = df.sort_values('Salary') # ascending order
print(asc)

desc = df.sort_values('Salary', ascending = False) # descending order
print(desc)
