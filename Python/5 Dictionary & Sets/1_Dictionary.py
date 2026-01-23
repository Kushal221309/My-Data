marks = {
    "KD" : 100,
    "AD" : 90,
    "RD" : 80,
     0 : "K"
}
print(marks)
print(type(marks))  # class
print(marks["KD"])   # KD marks
print(marks.get("KD")) # KD marks

# Methods
print(marks.items())
print(marks.keys())
print(marks.values())
print(marks.pop("KD"))

# marks.update({"KD" : 99})   # change the value of KD
# marks.update({"A" : 95})    # add new dic
# print(marks)

# Diff.
# print(marks["K0"])        # returns an error
# print(marks.get("K0"))   # print none
