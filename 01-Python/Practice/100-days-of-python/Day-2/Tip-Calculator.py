print("Welcome to the tip calculator!")

total_bill = int(input("What was the total bill?"))
tip = int(input("What percentage tip would you like to give? 10, 12, or 15? "))
people = int(input("How many people to split the bill?"))

total_tip = total_bill * tip / 100
total_bill_with_tip = total_bill + total_tip
bill_per_person = total_bill_with_tip / people

print(f"Each Person should pay: {bill_per_person:.2f}")