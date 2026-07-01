age = 25
# text = "Age is " + age #TypeError: can only concatenate str (not "int") to str

text = "Age is " + str(age) # Convert age to string before concatenation

print(text)

# or
print (f"age is {age}") # f-string formatting