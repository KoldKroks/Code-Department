#Question4

Educamp1=[]
Educamp2=[]
Educamp3=[]

i=0
i2=0

a1=0
a2=0

b1=0
b2=0

num1=int(input(""))
for x in range(num1):
    subject=input("")
    if (subject=="Software Development"):
        i+=1
    if (subject=="Machine Learning"):
        i2+=1    
    Educamp1.append(subject)

num2=int(input(""))
for y in range(num2):
    subject1=input("")
    if (subject1=="Software Development"):
        a1+=1
    if (subject1=="Machine Learning"):
        a2+=1  
    Educamp2.append(subject1)

num3=int(input(""))
for z in range(num3):
    subject2=input("")
    if (subject2=="Software Development"):
        b1+=1
    if (subject2=="Machine Learning"):
        b2+=1  
    Educamp3.append(subject2)

if(i>a1 and i>b1):                                                                #most SD campus
    print("The campus with the most Software Development students is 1")
elif(a1>i and a1>b1):
    print("The campus with the most Software Development students is 2")
else:
    print("The campus with the most Software Development students is 3")

if(i2<a2 and i2<b2):                                                                #Lowest Ml campus
    print("The campus with the least Machine Learning students is 1")
elif(a2<i2 and a2<b2):
    print("The campus with the least Machine Learning students is 2")
else:
    print("The campus with the least Machine Learning students is 3")


