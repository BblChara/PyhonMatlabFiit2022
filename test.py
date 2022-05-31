import math
def fac(n):
    if n == 0:
        return 1
    return fac(n-1) * n
def C(n,k):
    return fac(n)/(fac(k)*fac(n-k))

# import time
# start_time = time.time()
# f = open("zoo.txt")
# zoo = []
# for s in f:
#     t = s.split()
#     zoo.append([t[1],t[2]])
# zoo.sort()
# for i in range (len(zoo)-1):
#     last = ""
#     if zoo[i][0]==last:
#         continue
#     if zoo[i][0] == zoo[i+1][0]:
#         if zoo[i][1]!=zoo[i+1][1]:
#             last = zoo[i][0]
#             print(zoo[i][0])
#
# f.close()
# print("--- %s seconds ---" % (time.time() - start_time))
#
#
# start_time = time.time()
# f = open("zoo.txt")
# male = set()
# female = set()
# for s in f:
#     t = s.split()
#     if t[2] =='m':
#         male.add(t[1])
#     else:
#         female.add(t[1])
# otvet = list(male & female)
# print(sorted(otvet, key= len))
# f.close()
# print("--- %s seconds ---" % (time.time() - start_time))


# f = open("zoo.txt")
# zoo = {}
# for s in f:
#     if zoo.get(s.split()[1],-1) == -1:
#         zoo[s.split()[1]] = 1
#     else:
#         zoo[s.split()[1]]+=1
# print(sorted(list(zoo.items()),reverse=True, key = lambda x: x[1] ))

# f = open("calls.txt")
# A = []
# B = []
# for s in f:
#     if s.split()[2] == 'A':
#         A.append(s.split())
#     else:
#         B.append(s.split())
# print(sorted(A,reverse=True, key = lambda x: int(x[1])), sep = '\n')
# print(sorted(B,reverse=True, key = lambda x: int(x[1])), sep = '\n')


