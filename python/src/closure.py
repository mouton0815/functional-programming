def make_counter():
    result = 0

    def inner():
        nonlocal result
        result += 1
        return result
    return inner


counter = make_counter()
print(counter())  # 1
print(counter())  # 2
print(counter())  # 3
