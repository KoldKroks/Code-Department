#Question2

def percentage(marks,possible):
    average=marks/possible *100
    return average

x=0
i=0
posible123=0
marks123=0
while x==0:
    print("yess")
    try:
        pup_num,marks,possible,sex=input("Enter details.").split(",")                     #(Seperates values)
        marks=int(marks)
        possible=int(possible)
        grade=percentage(marks,possible)
        if (grade<=59):
            print(pup_num," ",grade," Fail")
        elif (grade>=60 and grade<=79):
            print(pup_num," ",grade," Pass")
        else:
            print(pup_num," ",grade," Distinction")
            if(sex=="f"):
                i+=1

    except:
        print("The number of females who passed with distictions is ",i)
        #print("The average percentage for all students is ",average12)
        break



