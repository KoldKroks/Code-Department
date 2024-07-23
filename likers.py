num1=int(input("Enter number 1"));
num2=int(input("Enter number 2"));
num3=num1+num2;

def sum(a):
    if a>=100:
        print("Enough the sum is ",num3);
    elif a<100:
        x=0;
        counter=0;
        while(x==0):
            num1=int(input("Enter a number."));
            counter=counter+1;
            a=a+num1;
            if a>=100:
                break
        print("The number of additional inputs is ",counter)
        print("The sum of the numbers is ",a)
        
sum(num3)        
