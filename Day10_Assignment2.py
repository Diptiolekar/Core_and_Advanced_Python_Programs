#Write a Python program to get the largest and smallest number from a list without built in functions.
# Define a list of numbers
numbers = [10, 45, 2, 89, 30, 7]

# Initialize largest and smallest with the first element of the list
largest = smallest = numbers[0]

# Loop through the list to find the largest and smallest numbers
for num in numbers:
    if num > largest:
        largest = num
    if num < smallest:
        smallest = num

# Print the results
print("Largest number:", largest)
print("Smallest number:", smallest)

'''   OUTPUT
Largest number: 89
Smallest number: 2 '''
