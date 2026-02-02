
# a = 100     # Global variable
# def fun():
#     a = 3   # a is local variable of this function
#     print(a)   

# fun()       # for function print
# print(a)    # for global variable




a = 100   
def fun():
    global a # change in the local variable
    a = 3   
    print(a)   

fun()     
print(a)   
