e = set()   # Dont use s = {} as it will create an empty dictionary

Sets = {1, 5, 32, 5, 5, "KD" } # elments do not repeat
Sets.add(2)
print(Sets)

# Operations on sets
print(type(Sets))
print(len(Sets))    # 1,2,32,5,"KD" = 5

Sets.remove(32)
print(Sets)
