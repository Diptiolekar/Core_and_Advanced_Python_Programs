# 1. Write a function in python to read the content from a text file "ABC.txt" line by line and display the same on screen.
def read_file():
    try:
        with open("ABC.txt", "r", encoding="utf-8") as file:
            for line in file:
                print(line.strip())  # .strip() removes extra newlines
    except FileNotFoundError:
        print("Error: The file 'ABC.txt' was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function
read_file()



'''  OUTPUT
hello everyone !!!

The file 'ABC.txt' does not exist. '''
