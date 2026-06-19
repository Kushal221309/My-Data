
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

print(df['Age'] >= 24) # in boolean

print(df[df['Age'] >= 24])  # in DataFrame
print(df[(df['Age'] >= 24) & (df['Salary'] >= 30000)])

print(df.where(df['Age'] >= 24))
print(df.where(df['Age'] >= 24, other = 'Not_Eligible'))

