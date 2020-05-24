def abbrevName(name):
    name_lst = name.split()
    return f"{name_lst[0][0].capitalize()}.{name_lst[1][0].capitalize()}"
