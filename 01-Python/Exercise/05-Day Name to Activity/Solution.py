day = str(input("Enter the name of the day: "))

match day:
    case "Monday" | "Tuesday" | "Wednesday" | "Thursday" | "Friday":
        print("It's a Workday.")
    case "Saturday" | "Sunday":
        print("It's a Weekend.")
    case _:
        print("Invalid input. Please enter a valid day name (e.g., Monday, Tuesday, etc.).")