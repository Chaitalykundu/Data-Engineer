name = "Charlie"
age = 24
salary = 50000.0
city = "New York"
seq = [1, 2, 3, 4, 5]
tuple = (1, 2, 3, 4, 5)
set = {1, 2, 3, 4, 5}
dict = {"name": "Charlie", "age": 24, "city": "New York"}

print("type of name:", type(name))
print("type of age:", type(age))
print("type of salary:", type(salary))
print("type of city:", type(city))
print("type of seq:", type(seq))
print("type of seq[0]:", type(seq[0]))
print("type of tuple:", type(tuple))
print("type of tuple[0]:", type(tuple[0]))
print("type of set:", type(set))
print("type of set[0]:", type(list(set)[0]))  # Convert set to list to access an element
print("type of dict:", type(dict))
print("type of dict['name']:", type(dict["name"]))