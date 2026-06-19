
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'Shaivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [20000, 15000, 30000, 20000]
    })
print(df)


print(df.head(2)) # top rows
print(df.tail(2)) # last rows

print(df.shape) # rows & columns

print(df.columns) # list of column names in a dataframe

# print(df.rename(columns = {'Salary' : 'Mon_Sal'})) # rename columns, temporary
print(df.rename(columns = {'Salary' : 'Mon_Sal'},inplace = True)) # rename columns, permanent

print(df.info()) # prints information about the dataframe
print(df.describe()) # describe, only for numerical value columns
