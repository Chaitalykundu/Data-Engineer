name = "Chaitaly"
age = 25

print(f"Hello {name}, you are {age} years old.")  # formatted string with f-string
print("Hello {a}, you are {b} years  old.".format(a=name, b=age))  # formatted string with variables
print("Hello {0}, you are {1} years old.".format(name, age))  # formatted string with positional arguments
print("Hello, {}! You are {} years old.".format(name, age))  # formatted string with positional arguments