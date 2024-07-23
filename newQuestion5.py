#Question5
import math

num1=int(input())
num2=int(input())
num3=int(input())

def paramount(num1,num2,num3):
    if (num1<num2 and num1<num3 ):
        lowest=num1
    elif (num2<num1 and num2<num3):
        lowest=num2
    else:
        lowest=num3
    sum=num1+num2+num3
    if (math.sqrt(sum)<lowest):
        print("The square root of the sum is less than ")
        print(lowest)
    elif (math.sqrt(sum)>lowest):
        print("The square root of the sum is more than ")
        print(lowest)
    else:
        print("The square root of the sum is equal to ")
        print(math.sqrt(sum))


paramount(num1,num2,num3)
