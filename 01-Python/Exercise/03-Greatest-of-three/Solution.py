a = int(int(input("Enter first number: ")))
b = int(int(input("Enter second number: ")))
c = int(int(input("Enter third number: ")))

if a>=b and a>=c:
    print("Greatest number is: ", a)
elif b>=a and b>=c:
    print("Greatest number is: ", b)
else:
    print("Greatest number is: ", c)