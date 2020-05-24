def fizz_buzz_custom_1(string_one="Fizz", string_two="Buzz", num_one=3, num_two=5):
    return [
        (
            f"{string_one}{string_two}"
            if d % num_one == 0 and d % num_two == 0
            else (
                string_one
                if d % num_one == 0
                else (string_two if d % num_two == 0 else d)
            )
        )
        for d in range(1, 101)
    ]


def fizz_buzz_custom_2(string_one="Fizz", string_two="Buzz", num_one=3, num_two=5):
    """
    >>> not 0
    True
    >>> not 5 % 5
    True
    >>> not 6 % 5
    False
    >>> "Test" * True
    'Test'
    >>> "Test" * False
    ''
    >>> "" or 1
    1
    """

    return [
        f"{string_one * (not d % num_one)}{string_two * (not d % num_two)}" or d
        for d in range(1, 101)
    ]


print("Test" * True)
