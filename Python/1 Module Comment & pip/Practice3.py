# Write a python program to print the contents of  directory using os module, Search online for the function which does that.
# = Use OS Module (ChatGPT)


import os

# Specify the directory path
directory_path = '/Users'

# List all file and directory in the specified path
contents = os.listdir(directory_path)

# Print each file and directory name 
for item in contents:
    print(item)



"""
import os

# Specify the directory path
path = '/Users'

# List all entries in the specified directory
entries = os.listdir(path)
print(entries)
"""