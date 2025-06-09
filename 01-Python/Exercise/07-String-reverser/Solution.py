str = "Hello World!"

n = len(str)
rev = ""

while(n > 0):
    rev =  rev + str[n-1]
    n-=1
print(rev)

