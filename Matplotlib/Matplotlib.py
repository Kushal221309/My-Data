

# What is matplotlib?
# Matplotlib is a Python library used for creating static, animated, and interactive plots.

# Data visualization: It's the graphical representation of data to identify patterns, trends, and insights.

import matplotlib.pyplot as plt

# pyplot is a collection of functions that make matplotlib work as MATLAB

#### 1 Create First Chart

# data
x = [1,2,3,4,5]
y = [10, 20, 25, 35, 45]

plt.plot(x,y) # line chart
plt.show() # display chart in jp nb

#### 2 Customize Chart

plt.figure(figsize=(4,3)) # figure size

plt.plot(x, y, color='blue', marker='o', linestyle='--', linewidth=2, markersize=12)

plt.title("Kuch bhi Title hai")
plt.xlabel("x-axis label hai")
plt.ylabel("y-axis label hai")

plt.show()

#### 3 Advanced - Multiple Lines & Legends

# data
x = [1,2,3,4,5]
y1 = [10, 20, 25, 35, 45]
y2 = [20, 30, 35, 45, 55]

plt.plot(x, y1, label='Sales 2024') # ploting y1 data
plt.plot(x, y2, label='Sales 2025') # ploting y2 data

plt.title("YoY Sales")
plt.xlabel("Months")
plt.ylabel("Sales")

plt.legend() # show legends
plt.show()

#### 4 Bar Chart

# data
x = ['A','B','C','D','E']
y = [10, 20, 55, 35, 45]

plt.bar(x,y)
plt.title('Bar Chart Example')
plt.show()

#### 5 Histogram

# used for distribution analysis
# data
import random
data = [random.randint(1, 20) for _ in range(500)]

plt.hist(data, bins=20) # histogram chart
plt.title("Histogram Example")
plt.show()


#### 6 Pie chart

# used to show part-to-whole relationships/data

# data
categories = ['A','B','C','D','E']
sales = [10, 20, 55, 35, 45]

plt.pie(sales, labels=categories, autopct = '%1.1f%%', startangle=90)
plt.title("Pie Chart Example")
plt.show()

#### 7 Scatter plot

# used to find relationship btwn variables

# data
y1 = [10, 20, 25, 35, 45]
y2 = [20, 30, 35, 45, 55]

plt.scatter(y1, y2)
plt.title("Scatter Plot Example")
plt.show()


#### 8 Subplots

# used to show multiple charts in one figure

# data-1 - bar chart
categories = ['Mon','Tue','Wed','Thu','Fri']
sales = [10, 20, 55, 35, 45]

# data-2 - scatter plot
y1 = [10, 20, 25, 35, 45]
y2 = [20, 30, 35, 45, 55]

plt.figure(figsize=(10,4))

# first plot- bar chart
plt.subplot(1,2,1) # row, column, position
plt.bar(categories, sales)
plt.title("Daily Sales")
plt.xlabel("Week Days")
plt.ylabel("Sales")


# second plot- scatter chart
plt.subplot(1,2,2) # row, column, position
plt.scatter(y1, y2)
plt.title("User Example")
plt.xlabel("User1")
plt.ylabel("User2")

plt.show()


#### 9 Matplotlib with Pandas - real data

# create df
import pandas as pd

# data
data = {
    'Month' : ['Jan', 'Feb', 'Mar', 'Apr'],
    'Sales' : [12000, 11000, 13000, 25000]
}

df = pd.DataFrame(data)
df

plt.bar(df['Month'], df['Sales'])
plt.title("Matplotlib with Pandas")
plt.xlabel("Month")
plt.ylabel("Sales")

plt.show()

#### 10 Save charts

plt.bar(df['Month'], df['Sales'])
plt.title("Matplotlib with Pandas")
plt.xlabel("Month")
plt.ylabel("Sales")

plt.savefig("Monthly_Sales_from_df.png")

plt.show()


