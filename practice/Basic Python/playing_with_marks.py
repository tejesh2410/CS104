with open("buggy_marksheet.txt", 'r') as f:
    data = []
    for line in f:
        id, marks = line.strip().split(" ")
        id=id.split("_")
        data.append((id, int(marks)))
    fixeddata = sorted(data, key= lambda x: (x[0][2], -x[1]))
    for i in fixeddata:
        print(f"{i[0][0]}_{i[0][1]}_{i[0][2]}_{i[0][3]} {i[1]}")