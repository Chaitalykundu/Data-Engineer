a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

operator = input("Enter operator (+, -, *, /): ")

match operator:
    case '+':
        res = a+b;
    case '-':
        res = a-b;
    case '*':
        res = a*b;
    case '/':
        if b != 0:
            res = a/b;
        else:
            res = "Error! Division by zero."
    case _:
        res = "Invalid operator! Please use +, -, *, or /."

print("Result: ", res)