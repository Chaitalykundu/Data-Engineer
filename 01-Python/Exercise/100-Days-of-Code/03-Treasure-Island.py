print("Welcome to Treasure Island!\nYour mission is to find the treasure.\nYou are at a crossroad, where do you want to go?")

side = input("\tType 'left' or 'right': \n").lower()

if side == "left":
    print("You come to a lake. There is an island in the middle of the lake.")
    action=input("Type 'wait' to wait for a boat or 'swim' to swim across.").lower()
    if action == "wait":
        print("You arrive at the island unharmed. There is a house with 3 doors.")
        input_door = input("Type 'red', 'blue', or 'yellow' to choose a door: ").lower()
        if input_door == "red":
            print("It's a room full of fire. Game Over.")
        elif input_door == "blue":
            print("You found a room full of beasts. Game Over.")
        elif input_door == "yellow":
            print("You found the treasure! You Win!")
        else:
            print("You chose a door that doesn't exist. Game Over.")
    elif action == "swim":
        print("You got attacked by a trout. Game Over.")
    else:
        print("Invalid choice. Game Over.")
elif side == "right":
    print("You fell into a hole. Game Over.")
else:
    print("Invalid choice. Game Over.")

