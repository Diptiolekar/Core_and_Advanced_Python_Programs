#  Write a python program to reverse a number using a while loop.
# Input from user
num = int(input("Enter a number: "))

# Initialize the reversed number to 0
rev_num = 0

# Loop to reverse the number
while num > 0:
    digit = num % 10  # Get the last digit
    rev_num = rev_num * 10 + digit  # Add it to the reversed number
    num = num // 10  # Remove the last digit

# Print the reversed number
print("Reversed number:", rev_num)

''' OUTPUT  '''
''' Enter a number: 321
Reversed number: 123  '''
