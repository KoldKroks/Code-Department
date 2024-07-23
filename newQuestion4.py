#Question4

myfile=open("residents.txt","r")
pensioners=open("pensioners.txt","x")                                         #If file does not exist it will be created
nojob=open("noJob.txt","x")
i=0
while True:
    line=myfile.readline()
    if(len(line))==0:                                                          #When theres no more lines to read
        break
    info=line.split(" ")

    if (int(info[2])>=60):
        pensioners.write(line)
        i+=1
    
    if(info[0]=="Unemployed" and int(info[2])<60):
        nojob.write(line)

nojob.close()

nojob=open("noJob.txt","r")
print("Total Pensioners: ",i)
while True:
    line2=nojob.readline()
    if(len(line2))==0:                                                          #When theres no more lines to read
        break
    print(line2)


