def fmap(f, l):
    for i in range(0, len(l)):
        l[i] = f(l[i])
    return l

lista = [1, 2, 3, 4, 5]

print(fmap((lambda x: x*2), lista))