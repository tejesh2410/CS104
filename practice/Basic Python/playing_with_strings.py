def ispermutation(p):
    for i in range(len(p)):
        if str(i) not in p:
            print(i)
            return False
    return True

word = input()
perm = input().split(" ")
if len(word) != len(perm) or not ispermutation(perm):
    print("INVALID INPUT")
else:
    for i in perm:
        print(word[int(i)], end="")
    print()