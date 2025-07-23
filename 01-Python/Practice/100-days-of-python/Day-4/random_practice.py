import random
print(random.random())  # generate random floating number btw   0.0 and 1.0
print(random.random() * 10)  # generate random floating number btw 0.0 and 10.0

print(random.randint(1,15))  # generate random integer number btw 1 and 15

print(random.uniform(1,10)) # generate random floating number btw 1 and 10

print(random.choice([0,1,3,4,2]))  # generate random choice from the given sequence
print(random.choice((0,1,3,4,2)))  # generate random choice from the given tuple
print(random.choice("Hello"))  # generate random choice from the given string