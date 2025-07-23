print("Welcome to the Rock, Paper, Scissors game!")
print("Choose your move: Rock, Paper, or Scissors")


# Method 1: Using string input
import random
user = input("Enter your choice: ").lower()

# This will work correctly, as randint generates a random integer within the specified range
# Correcting the range to match the list length

if user not in ["rock", "paper", "scissors"]:
    print("Invalid choice! Please choose Rock, Paper, or Scissors.")
    exit()
else:
    computer = random.choice(["rock", "paper", "scissors"])
    print(f"Computer chose: {computer}")
    if user == computer:
        print("It's a tie!")
    elif (user == "rock" and computer == "scissors") or (user == "paper" and computer == "rock") or (user == "scissors" and computer == "paper"):
        print("You win!")
    else:
        print("You lose!")


# Method 2: Using index input
import random
options = ["rock", "paper", "scissors"]

# user input using index
user = int(input("Enter your choice (0 for Rock, 1 for Paper, 2 for Scissors): "))
if user < 0 or user >= len(options):
    print("Invalid choice! Please enter 0, 1, or 2.")
    exit()
else:
    computer = random.randint(0, 2)
    print(f"User choose : {options[user]} and Computer choose : {options[computer]}")
    if user == computer:
        print("It's a tie!")
    elif (user == 0 and computer == 2) or (user == 1 and computer == 0) or (user == 2 and computer == 1):
        print("You win!")
    else:
        print("You lose!")