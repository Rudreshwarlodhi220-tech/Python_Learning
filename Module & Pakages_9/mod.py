# # Moduls -
#         -  coleection of function ,variable object, class Ex.{function.py, class.py} Or extension of .py called Modules.
# # Pakages - 
#           - Collection of Modules.{Pandas,Matplotlib,sipy etc.} also called libraries

# ## import - 
#          - when we want to import file into another file.
#          use for call  particular method .

# ## from -
#         - We can directly use another file .like from mod import prime (prime is function inside a modules)



def GCD(num_1,num_2):
    if num_1 < num_2:
        large_no = num_2
    else:
        large_no = num_1
    for i in range(large_no,1,-1):     # isme ye dhyan rakhna hai ki function yaha call nahi hona chaiyee.
        if num_1%i == 0 and num_2%i==0:
            return i
            

def prime(n):
    for i in  range(1,n+1):
        for j in range(2,i):
            if i%j == 0:
                break
        else:
            print(i)
num = int(input('Enter number range to find Prime no. = '))




def factorial(n):
    fact = 1
    for i in range(1,n+1):
        fact *= i
    return fact
num = int(input('Enter number for factorial = '))






def palindrome(text):
    rev = ''
    for i in  text:
        rev = i + rev
    if rev == text:
        return 'Text is Palindrome'
    else:
        return 'Text is not Palindrome'






