# Write a Python program to find duplicate values from a list and display those.
# Define a list with some duplicate values
numbers = [10, 20, 30, 10, 40, 50, 20, 60, 30]

# Create an empty list to store duplicates
duplicates = []

# Check for duplicates
for num in numbers:
    if numbers.count(num) > 1 and num not in duplicates:
        duplicates.append(num)

# Print the duplicate values
print("Duplicate values:", duplicates)

'''   OUTPUT
Duplicate values: [10, 20, 30]   '''
