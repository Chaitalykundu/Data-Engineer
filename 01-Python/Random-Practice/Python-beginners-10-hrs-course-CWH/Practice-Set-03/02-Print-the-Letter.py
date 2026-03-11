name = input("Enter name: ")
date = input("Enter date: ")
letter = """Dear name,
    I hope this letter finds you well.
Best regards,
Bob
date"""
print(letter.replace("name", name).replace("date", date))

# or

letter2 = f"""Dear {name},
    I hope this letter finds you well.
Best regards,
Bob
{date}"""

print(letter2)