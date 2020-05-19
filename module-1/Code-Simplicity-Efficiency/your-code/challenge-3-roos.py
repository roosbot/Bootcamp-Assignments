#!/usr/bin/env python
# coding: utf-8

# In[ ]:


# I gave the function a more descriptive name
# I gave variables a more descriptive name
# I added spaces for consistency
# I put new variables on top
# I deleted unnecessary code             
# if (x * x == y * y + z * z):
# solutions.append([x, y, z])


# In[27]:


"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""

number = input("What is the maximal length of the triangle side? Enter a number: ")

def longestSide(number):
    
    solutions = []
    longest_side = 0
    
    solutions = [[x, y, z] for z in range(3, number) for y in range(4, number) for x in range(5, number)] 
                       
    for solution in solutions:
        if longest_side < max(solution):
            longest_side = max(solution)
            
    return longest_side

print("The longest side possible is " + str(longestSide(int(number))))

