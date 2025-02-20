# 2. Write a Python program to remove duplicate characters of a given string. 
# Input = “String and String Function” 

def remove_duplicates(s):
    words = s.split()  # Split the string into words
    unique_words = []  

    for word in words:
        if word not in unique_words:
            unique_words.append(word)  # Add only unique words

    return " ".join(unique_words)  # Join words back into a string

# Given input
input_str = "String and String Function"
output_str = remove_duplicates(input_str)

print("Output:", output_str)


''' OUTPUT
Output: String and Function  '''
