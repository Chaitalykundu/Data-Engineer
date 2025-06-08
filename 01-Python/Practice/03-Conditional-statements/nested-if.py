age = int(input("Enter your age: "))

if age >= 18:
    citizen = input("Are you a citizen? (yes/no): ")
    if citizen == 'yes' or citizen == 'Yes' or citizen == 'YES' or citizen == 'y' or citizen == 'Y' or citizen == '1':
        print("You are eligible to vote.")
    elif citizen == 'no' or citizen == 'No' or citizen == 'NO' or citizen == 'n' or citizen == 'N' or citizen == '0':
        print("You are not eligible to vote because you are not a citizen.")
    else:
        print("Invalid input for citizenship. Please answer with yes or no.")
else:
    print("You are not eligible to vote because you are under 18 years old.")