print(int("123") + int("456"))  # string to int conversion and addition 
print(float("123.456"))  # string to float conversion
print(str(123) + str(456))  # int to string conversion and concatenation
print(bool(9))  # int to bool conversion (non-zero int is True)
print(bool("0"))  # int to bool conversion # (non-empty string is True)
print(bool(""))  # empty string is False



name = input("Enter your name: ")  # taking input as string
n = len(name)
print("Your name is: " + name +  " and it has " + str(n) + " characters.")  # string concatenation with length