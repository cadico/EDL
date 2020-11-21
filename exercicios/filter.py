def ffilter(f, l):
    if not l:
        return []
    if f(l[0]):
        return [l[0]] + ffilter(f, l[1:])
    else:
        return ffilter(f, l[1:])

lista = [1, 2, 3, 4, 5]
print(ffilter((lambda x: x%2 == 0), lista))