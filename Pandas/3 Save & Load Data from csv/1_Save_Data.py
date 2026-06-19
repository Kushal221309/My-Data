
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'Shaivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [20000, 15000, 30000, 20000]
    })
print(df)

df.to_csv('My-Data/Pandas/3 Save & Load Data from csv/Test_data.csv')
