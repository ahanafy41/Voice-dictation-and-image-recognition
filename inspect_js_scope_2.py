with open('main.lua', 'r') as f:
    lines = f.readlines()

for i in range(4820, 4835):
    print(f"{i+1}: {lines[i].rstrip()}")
