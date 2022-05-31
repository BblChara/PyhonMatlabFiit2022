def one(strr):
    return str[::-1]

def two(strr):
    one = strr.find('"')
    two = strr.rfind('"')
    return strr[one:two+1]

def three(strr):
    return str(int(strr)*2)

def four(strr):
    return " ".join(reversed(strr.split()))

def five(strr):
    one = strr.find("@")
    print(one)
    two = strr.rfind(' ', 0, one)
    print(two)
    return(strr[two+1:one])

def six(strr):
    strr = strr.replace('-','')
    strr = strr.replace(' ', '')
    strr = strr.replace('(', '')
    strr = strr.replace(')', '')
    return strr

def seven(strr):
    strr = strr.lower()
    strr = strr.replace(' ', '')
    if strr[::-1] == strr:
        return "It is a palindrome"
    return "It isn't a palindrome"

def eight():
    res = ""
    for i in range (1,124):
        res += str(i)
    res = res.replace('9','')
    return res

def nine():
    res = []
    for i in range(100,1000):
        temp = str(i)
        if i == (int(temp[0])**3+int(temp[1])**3+int(temp[2])**3):
            res.append(i)
    return res

def ten(n):
    res = []
    for i in range(n):
        temp = str(i**2)
        if str(i) == temp[len(temp)-len(str(i)):len(temp)]:
            res.append(i)
    return  res




