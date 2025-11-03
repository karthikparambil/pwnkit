x=int(input("Start: "))
y=int(input("end: "))
file=input("Enter filename: ")
with open(file, "w") as f:
    for i in range(x,y+1):
        print(i)
        f.write(f"{i}\n")

    
