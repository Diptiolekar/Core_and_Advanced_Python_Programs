# 2. Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer
try:
    num = int(input("Enter an integer: "))
    print("You entered:", num)
except ValueError:
    print("Error: Invalid input! Please enter a valid integer.")


''''  OUTPUT
Enter an integer: aad
Error: Invalid input! Please enter a valid integer.

Enter an integer: 5
You entered: 5   ''''
