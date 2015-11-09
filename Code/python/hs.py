def hs(n):
    print(n)
    l = 1
    while n > 1:
        if (n % 2 == 0):
            n = n // 2
            print(n)
            l = l + 1
        else:
            n = n*3 + 1
            print(n)
            l = l + 1

    print (l)
    return None
        
