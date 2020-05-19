#!/usr/bin/env python
# coding: utf-8

# In[ ]:


# I gave variables a more descriptive name
# I added spaces for consistency
# I put the libraries at the top
# I put new variables before the function
# I added the string library to more efficiently generate source for random strings and digits


# In[ ]:


"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.
The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""


# In[6]:


import random
import sys
import string

def RandomStringGenerator(length = 12):
    randomSource = list(string.ascii_letters + string.digits)
    step = 0
    password = ''
    while step < length:
        import random
        password += random.choice(randomSource)
        step += 1
    return password

def BatchStringGenerator(num_strings, min_length=8, max_length=12):
    result = []
    for i in range(num_strings):
        choice = None
        if min_length < max_length:
            import random
            choice = random.choice(range(min_length, max_length))
        elif min_length == max_length:
            choice = min_length
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        result.append(RandomStringGenerator(choice))
    return result

min_length = input('Enter minimum string length: ')
max_length = input('Enter maximum string length: ')
num_strings = input('How many random strings to generate? ')

print(BatchStringGenerator(int(num_strings), int(min_length), int(max_length)))

