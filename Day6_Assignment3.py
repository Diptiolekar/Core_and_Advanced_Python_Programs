# Write a python program finding the factorial of a given number using a while loop.
# Input from user
num = int(input("Enter a number: "))

# Initialize factorial to 1
fact = 1

# Store the original number
i = num

# Calculate factorial using while loop
while i > 0:
    fact *= i  # Multiply fact by current number
    i -= 1  # Decrease the number by 1

# Print the factorial
print("Factorial of", num, "is:", fact)


''' OUTPUT
Enter a number: 5
Factorial of 5 is: 120  '''
