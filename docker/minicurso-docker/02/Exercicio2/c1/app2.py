f = open(r"./data/arquivo.txt", "a")

for x in range(10):
    print(f"{x}")
    f.write(f"{x} \n")

f.close()

while(True):
    continue