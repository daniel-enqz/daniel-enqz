NAMES = [
    "John",
    "Mary",
    "Peter",
    "Susan",
    "Michael",
    "Jessica",
    "Sarah",
    "David",
    "Robert",
]


text = "Hello Robert, Jessica and Peter, my name is John Sarah Robert. I am 20 years old. I live in New York. Susan also did this, and the David and Robert played with Susan, and John kissed David"

# returns an iterator that yields pairs of (index, element) for each element in the arr of names
print("ENUMARATE")
for i, word in enumerate(text.split()):
    print(f"{i}: {word}")


# The list of comprehension is a one liner, you can iterate over a list of elements an return the object
# in this case an array
print("ONE-LINER")
hash = {}
for name in NAMES:
    indexes = [i for i, word in enumerate(text.split()) if word == name]
    hash[name] = indexes
print(hash)

# will be the same as

print("MORE LINES")
indexes = []
for name in NAMES:
    for i, word in enumerate(text.split()):
        if word == name:
            indexes.append([i, word])
print(indexes)
