"""
Write a program using function to 
convert celsius to fehrenheit.
Formula- c = 5*(f-32)/9

"""
def f_to_c(f):
    return 5*(f-32)/9

f = int(input("Enter Temprature in F : "))
print(f"{f_to_c(f)} ℃")

c = f_to_c(f)
print(c)
print(f"{round(c, 2)} ℃") # To two decimal places

