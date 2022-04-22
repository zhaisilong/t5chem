import linecache

c = linecache.getlines('poetry.lock')
b = linecache.getline('poetry.lock', 1)
print(c[1])
print(b)

