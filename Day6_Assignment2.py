# Write a python program to check whether a number is palindrome or not?
# # Input from user
num = int(input("Enter a number: "))

# Store the original number
original_num = num

# Initialize the reversed number to 0
rev_num = 0

# Reverse the number
while num > 0:
    digit = num % 10  # Get the last digit
    rev_num = rev_num * 10 + digit  # Add it to the reversed number
    num = num // 10  # Remove the last digit

# Check if the original number is equal to the reversed number
if original_num == rev_num:
    print("The number is a palindrome.")
else:
    print("The number is not a palindrome.")


''' Enter a number: 121
The number is a palindrome.

Enter a number: 123
The number is not a palindrome. '''
