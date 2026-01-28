
# for multiple line
f = open("My-Data/Python/9 File I O/1_File_Read.txt", "r")

#print(f.read())
Data = f.read()
print(Data)

f.close()   # for file close


print("\n") # for distance in output


# for one by one line
l = open("My-Data/Python/9 File I O/1_File_Read.txt", "r")
#lines = l.readlines()
#print(lines, type(lines))

line1 = l.readline()
print(line1)

line2 = l.readline()
print(line2)

line3 = l.readline()
print(line3)

line4 = l.readline()
print(line4)        # Empty

l.close()

