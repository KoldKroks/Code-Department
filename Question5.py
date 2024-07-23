#Question5

num1=int(input("Enter your first number."))
num2=int(input("Enter your second number."))

def compare(num1,num2):
    sum=num1+num2
    i=0
    if (sum>=100):
        print("Enough. The sum is ",sum)
    else:
        while (sum<100):
            values=int(input(""))
            i+=1
            sum=sum+values
        print("The number of additional inputs is ",i)
        print("The sum of the numbers is ",sum)

compare(num1,num2)