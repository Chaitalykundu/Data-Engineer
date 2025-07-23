print("Welcome to Pizza Order!")
size = input("What size pizza do you want? S, M, or L: ").lower()

bill = 0


if size == 's':
        bill = 18
elif size == 'm':
        bill =  25
elif size == 'l':
        bill =  30
else:
        print("Invalid size selected.")
        exit()


pepperoni = input("Do you want pepperoni? Y or N: ").lower()
if pepperoni == 'y':
        if size == 's':
                bill += 2
        else:
                bill += 3
else:
        print("No pepperoni added.")


extra_cheese = input("Do you want extra cheese? Y or N: ").lower()
if extra_cheese == 'y':
        bill += 1
else:
        print("No extra cheese added.")

print(f"Your final bill is: ${bill}.")

