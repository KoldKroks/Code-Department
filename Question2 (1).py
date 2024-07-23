#Question2

def percentage(marks,possible):
    average=marks/possible *100
    return average

x=0
i=0
num=0
grade123=0
while x==0:
    try:
        num+=100
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
        grade123=grade123+grade
        average12=grade123/num *100

    except:
        print("The number of females who passed with distictions is ",i)
        print("The average percentage for all students is ",average12)
        break



