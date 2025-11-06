x=int(input("Start: "))
y=int(input("end: "))
file=input("Enter filename: ")
with open(file, "w") as f:
    for i in range(x,y+1):
        f.write(f"{i}\n")
print(f"File saved as: {file}")
