# Python program to check leap year  or not.
# first enter input
year = int(input("Enter a year: "))
# apply if condition 
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print("its a leap year.")
# if condition is false the apply else condition
else:
    print("its not a leap year.")


''' OUTPUT 
Enter a year: 2002
its not a leap year.

Enter a year: 2024
its a leap year.'''


