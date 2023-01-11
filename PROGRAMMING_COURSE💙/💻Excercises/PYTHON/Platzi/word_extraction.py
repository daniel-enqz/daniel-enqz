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

def name_extractor(text):
    names = {}
    for name in NAMES:
        indexes = [i for i, word in enumerate(text.split()) if word == name]
        count = text.split().count(name)
        if indexes:
            names[name] = {'index': indexes, 'count': count}
    return names

text = "Hello Robert, Jessica and Peter, my name is John Sarah Robert. I am 20 years old. I live in New York. Susan also did this, and the David and Robert played with Susan, and John kissed David"
print(name_extractor(text))
