
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df['Team'] = ['CEO', 'HR', 'CTO', 'DA']
print(df)

df['Bonus'] = df['Salary']*0.2
print(df)
