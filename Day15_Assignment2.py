#2. Write a function in Python to count and display the total number of words in a text file “ABC.txt”
def count_words():
    try:
        with open("ABC.txt", "r", encoding="utf-8") as file:
            text = file.read()
            words = text.split()  # Splitting text into words
            print("Total number of words:", len(words))
    except FileNotFoundError:
        print("Error: The file 'ABC.txt' was not found.")

# Call the function
count_words()


''' OUTPUT
hello everyone !!!
Total number of words: '''
