
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df['DOJ'] = ['2024-01-01', '2025-11-01', '2023-01-01', '2024-01-01']
df['DOJ'] = pd.to_datetime(df['DOJ'])


# Add 90 days to DOj column 
print(df['DOJ'] + pd.Timedelta(days = 90))
