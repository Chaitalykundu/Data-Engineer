bill_payer = ["Angela", "James", "Jack", "Jill", "John"]

# method 1
import random
print(random.choice(bill_payer))  # randomly selects a name from the list


# method 2
import random

payer_index = random.randint(0,4)
print(bill_payer[payer_index])  # This will not work as intended, since randint expects integers
