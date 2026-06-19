
import numpy as np # this is use to change values
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df.loc[df.Name == 'Amit', 'Salary'] = np.nan # change values to null
print(df)

print(df.isnull()) # find null valuse
print(df.isnull().sum())  # count of null values


