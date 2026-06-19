
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam', 'XYZ'],
    'Age' : [24, 22, 28, 25, 0],
    'Salary' : [25000, 20000, 30000, 25000, 0]
})

df.loc[4,'Salary'] = 10
print(df)

