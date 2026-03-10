# Suppose a string "python" is given and you are told to change the 1st letter to "J". How will you do this
str = "python"

str  = "J" + str[1:]
print (str)

# Suppose a string "python" is given and you are told to change the  letter "th" to "ht". How will you do this

str1 = "python"
str1 = str1[:2] + "ht" + str1[4:]

print(str1)