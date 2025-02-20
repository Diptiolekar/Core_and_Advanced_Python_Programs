# Write a Python program to Count all letters, digits, and special symbols from the given 
# string Input = “P@#yn26at^&i5ve”

def count_chars(s):
    chars = digits = symbols = 0
    
    for ch in s:
        if ch.isalpha():
            chars += 1
        elif ch.isdigit():
            digits += 1
        else:
            symbols += 1
    
    print("Chars =", chars)
    print("Digits =", digits)
    print("Symbols =", symbols)

# Given input
input_str = "P@#yn26at^&i5ve"
count_chars(input_str)

'''  OUTPUT
Chars = 8
Digits = 3
Symbols = 4  '''
