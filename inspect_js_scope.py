with open('main.lua', 'r') as f:
    lines = f.readlines()

for i in range(5080, 5100):
    print(f"{i+1}: {lines[i].rstrip()}")
