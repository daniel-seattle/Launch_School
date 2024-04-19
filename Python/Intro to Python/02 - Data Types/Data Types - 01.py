# While it's good to be able to identify the data type of a variable by looking at its value, when debugging, it's visually simpler to call on the type() method.

value_list = [
    'True',
    False,
    (1, 2, 3),
    1.5,
    [1, 2, 3],
    2,
    range(5),
    {1, 2, 3},
    None,
    {
        'foo': 'bar'
    },
]

for value in value_list:
  print(f'{value} is {type(value)}')
