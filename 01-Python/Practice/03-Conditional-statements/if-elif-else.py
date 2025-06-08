marks  = int (input("Enter your marks: "))

if marks >= 90 and marks <= 100:
    print("You got an A grade.")
elif marks >= 80 and marks < 90:
    print("You got a B grade.")
elif marks >= 70 and marks < 80:
    print("You got a C grade.")
elif marks >= 60 and marks < 70:
    print("You got a D grade.")
elif marks >= 50 and marks < 60:
    print("You got an E grade.")
elif marks >= 0 and marks < 50:
    print("You got a F grade! Study harder next time.")
else:
    print("Invalid marks entered. Please enter a value between 0 and 100.")