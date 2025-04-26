with open("q2-input.txt", 'r') as f:
    sets = f.readlines()
    u = set([])
    for i in sets:
        u = u.union(set(i.strip().split(",")))
    print(len(u))