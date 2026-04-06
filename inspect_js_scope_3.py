with open('main.lua', 'r') as f:
    lines = f.readlines()

for i in range(5480, 5500):
    print(f"{i+1}: {lines[i].rstrip()}")
